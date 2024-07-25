import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:mezgebe_sbhat/models/song.dart';

import 'package:mezgebe_sbhat/services/file_service.dart';

import 'package:path/path.dart' as path;

class PlayListProvider extends ChangeNotifier {
  bool _isDisposed = false;
  Completer<void>? _ongoingTask;

  final FileService fileService;

  @override
  void dispose() {
    _isDisposed = true;
    _audioPlayer.dispose();

    _ongoingTask = Completer();
    if (!_ongoingTask!.isCompleted) {
      _ongoingTask?.complete();
    }

    super.dispose();
  }

  List<Song> playList = [];

  PlayListProvider({
    required this.playList,
    required this.fileService,
  }) {
    listenToDuration();
  }

  int _currentIndex = 0;

  // getters
  // List<Song> get playList => playList;
  int get currentIndex => _currentIndex;

  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  bool get isPlaying => _audioPlayer.state == PlayerState.playing;
  bool get isPaused => _audioPlayer.state == PlayerState.paused;
  bool get isStopped => _audioPlayer.state == PlayerState.stopped;

  bool _isDownloading = false;
  bool get isDownloading => _isDownloading;

  bool _downloadError = false;
  bool get downloadError => _downloadError;

  bool _loopAudio = false;
  bool _playNext = false;

  bool get loopAudio => _loopAudio;
  bool get playNext => _playNext;

  String get currentDurationString => formatDuration(_currentDuration);
  String get totalDurationString => formatDuration(_totalDuration);

  // setters
  final AudioPlayer _audioPlayer = AudioPlayer();

  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  void listenToDuration() {
    if (_isDisposed) return;
    try {
      _audioPlayer.onDurationChanged.listen((Duration duration) {
        _totalDuration = duration;

        notifyListeners();
      });

      _audioPlayer.onPositionChanged.listen((Duration position) {
        _currentDuration = position;
        notifyListeners();
      });

      _audioPlayer.onPlayerComplete.listen((event) async {
        if (_loopAudio) {
          await play();
        } else if (_playNext) {
          await next();
        } else {
          await stop();
          _currentDuration = Duration.zero;
        }
        notifyListeners();
      });
    } finally {
      //if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
      // _ongoingTask = Completer<void>();
    }
  }

  Future<void> play() async {
    if (_isDisposed) return;

    try {
      final path = await fileService.getPath();
      final fileName = getAudioFileName(playList[_currentIndex].title);

      final file = await getAudioFile(path, fileName);

      if (file != null) {
        await playFile(file);
      } else {
        print('file is null');
        _isDownloading = true;
        notifyListeners();
        await downloadAndPlayAudio(playList[_currentIndex].audioUrl, fileName);
      }
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  String getAudioFileName(String title) => '${title.replaceAll(' ', '_')}.mp3';

  Future<File?> getAudioFile(String path, String fileName) async {
    // final fullPath = '$path/$fileName';
    if (_isDisposed) return null;

    try {
      if (await fileService.doesFileExist(fileName: fileName)) {
        print('file Exists bro !');
        return fileService.getFile(fileName);
      } else {
        return null;
      }
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> downloadAndPlayAudio(String audioUrl, String fileName) async {
    if (_isDisposed) return;

    try {
      _isDownloading = true;
      _downloadError = false;
      notifyListeners();
      try {
        final file = await fileService.downloadFile(
          url: audioUrl,
          fileName: fileName,
          fileId: audioUrl,
        );
        if (file != null) {
          _isDownloading = false;
          notifyListeners();
          await playFile(file);
        }
      } catch (e) {
        _isDownloading = false;
        _downloadError = true;
        notifyListeners();
      }
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  String removeExtraExtensions(String filepath, String extension) {
    final dirName = path.dirname(filepath);
    final filename = path.basenameWithoutExtension(filepath);
    final newFilename = path.join(dirName, filename);
    return '$newFilename.$extension';
  }

  Future<void> playFile(File file) async {
    if (_isDisposed) return;
    try {
      await _audioPlayer.stop();
      await _audioPlayer.play(DeviceFileSource(
          removeExtraExtensions(file.path, 'mp3'),
          mimeType: 'audio/mp3'));
    } catch (e) {
      print('error from playFile function: $e');
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> pause() async {
    if (_isDisposed) return;
    await _audioPlayer.pause();
  }

  Future<void> resume() async {
    if (_isDisposed) return;

    if (isStopped) {
      print('audio was stopped');
      return await play();
    }
    await _audioPlayer.resume();
  }

  Future<void> playPause() async {
    if (_isDisposed) return;
    try {
      if (isPlaying) {
        await pause();
      } else if (!isPlaying) {
        await resume();
      }
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> seek(Duration duration) async {
    if (_isDisposed) return;
    try {
      await _audioPlayer.seek(duration);
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  void setCurrentIndex(int index) {
    if (_isDisposed) return;

    if (index >= playList.length) {
      _currentIndex = 0;
    } else if (index < 0) {
      _currentIndex = playList.length - 1;
    } else {
      _currentIndex = index;
    }
  }

  Future<void> next() async {
    try {
      _currentDuration = Duration.zero;
      setCurrentIndex(_currentIndex + 1);
      await stop();
      await play();
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> previous() async {
    try {
      _currentDuration = Duration.zero;
      setCurrentIndex(_currentIndex - 1);
      await stop();
      await play();
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> stop() async {
    try {
      await _audioPlayer.stop();
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> fastForward() async {
    try {
      await _audioPlayer.seek(_currentDuration + const Duration(seconds: 5));
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  Future<void> rewind() async {
    try {
      await _audioPlayer.seek(_currentDuration - const Duration(seconds: 5));
    } finally {
      _ongoingTask = Completer<void>();
      if (!_ongoingTask!.isCompleted) _ongoingTask!.complete();
    }
  }

  void toggleLoop() {
    _loopAudio = !_loopAudio;
    if (_loopAudio) {
      _playNext = false;
    }
    notifyListeners();
  }

  void togglePlayNext() {
    _playNext = !_playNext;
    if (_playNext) {
      _loopAudio = false;
    }
    notifyListeners();
  }

  void playIndex(int index) {
    setCurrentIndex(index);
    play();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
