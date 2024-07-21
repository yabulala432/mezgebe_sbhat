import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:mezgebe_sbhat/models/song.dart';

import 'package:mezgebe_sbhat/services/file_service.dart';

class PlayListProvider extends ChangeNotifier {
  FileService fileService = FileService();
  List<Song> playList = [];

  PlayListProvider({
    required this.playList,
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
    _audioPlayer.onDurationChanged.listen((Duration duration) {
      _totalDuration = duration;

      notifyListeners();
    });

    _audioPlayer.onPositionChanged.listen((Duration position) {
      _currentDuration = position;
      notifyListeners();
    });

    _audioPlayer.onPlayerComplete.listen((event) {
      if (_loopAudio) {
        play();
      } else if (_playNext) {
        next();
      } else {
        stop();
        _currentDuration = Duration.zero;
      }
      notifyListeners();
    });
  }

  Future<void> play() async {
    String path = await fileService.getPath();

    print('play function called .............................');

    String fileName =
        '${playList[_currentIndex].title.replaceAll(' ', '_')}.mp3';
    File? file =
        File('$path/${playList[_currentIndex].title.replaceAll(' ', '_')}.mp3');
    if (await fileService.doesFileExist(fileName: fileName)) {
      print('file exists and trying to play .............................');
      await playFile(file);
    } else {
      _isDownloading = true;
      notifyListeners();
      file = await fileService.downloadFile(
        url: playList[_currentIndex].audioUrl,
        fileName: playList[_currentIndex].title.replaceAll(' ', '_'),
      );
      if (file != null) {
        _isDownloading = false;
        notifyListeners();
        await playFile(file);
      }
    }
  }

  Future<void> playFile(File file) async {
    try {
      await _audioPlayer.stop();
      await _audioPlayer
          .play(DeviceFileSource(file.path, mimeType: 'audio/mp3'));
    } catch (e) {
      print('error from playFile function: $e');
    }
  }

  Future<void> pause() async {
    await _audioPlayer.pause();
  }

  Future<void> resume() async {
    await _audioPlayer.resume();
  }

  Future<void> playPause() async {
    print('playPause function called .............................');
    if (isPlaying) {
      print('isPlaying true .............................');
      await pause();
    } else {
      print('is playing false .............................');
      await resume();
    }
  }

  void seek(Duration duration) {
    _audioPlayer.seek(duration);
  }

  void setCurrentIndex(int index) {
    if (index >= playList.length) {
      _currentIndex = 0;
    } else if (index < 0) {
      _currentIndex = playList.length - 1;
    } else {
      _currentIndex = index;
    }
  }

  void next() async {
    _currentDuration = Duration.zero;
    setCurrentIndex(_currentIndex + 1);
    await stop();
    await play();
  }

  Future<void> previous() async {
    _currentDuration = Duration.zero;
    setCurrentIndex(_currentIndex - 1);
    await stop();
    await play();
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
  }

  Future<void> fastForward() async {
    await _audioPlayer.seek(_currentDuration + const Duration(seconds: 5));
  }

  Future<void> rewind() async {
    await _audioPlayer.seek(_currentDuration - const Duration(seconds: 5));
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

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  // helper methods
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
