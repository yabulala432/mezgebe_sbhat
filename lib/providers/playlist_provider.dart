import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:mezgebe_sbhat/models/song.dart';

import 'package:mezgebe_sbhat/services/file_service.dart';

class PlayListProvider extends ChangeNotifier {
  FileService fileService = FileService();
  final List<Song> _playList = [
    Song(
      audioUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
      amharicImagePath: 'assets/kdase/emne_beha_amharic.png',
      geezImagePath: 'assets/kdase/emne_beha_geez.png',
      title: '01_wetebarek',
    ),
    Song(
      audioUrl:
          'https://www.ethiopianorthodox.org/amharic/yeqolotbet/gitsawe/02%20weemeni.wma',
      geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
      amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
      title: '02_weemeni',
    ),
  ];

  List<Song> get playList => _playList;

  PlayListProvider() {
    listenToDuration();
  }

  int _currentIndex = 0;

  // getters
  // List<Song> get playList => _playList;
  int get currentIndex => _currentIndex;

  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  bool get isPlaying => _audioPlayer.state == PlayerState.playing;
  bool get isPaused => _audioPlayer.state == PlayerState.paused;
  bool get isStopped => _audioPlayer.state == PlayerState.stopped;

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

  void play() async {
    String path = await fileService.getPath();
    String fileName =
        '${_playList[_currentIndex].title.replaceAll(' ', '_')}.wma';
    File? file = File(
        '$path/${_playList[_currentIndex].title.replaceAll(' ', '_')}.wma');
    if (await fileService.doesFileExist(fileName: fileName)) {
      print('playing from file');
      playFile(file);
    } else {
      file = await fileService.downloadFile(
        url: _playList[_currentIndex].audioUrl,
        fileName: _playList[_currentIndex].title.replaceAll(' ', '_'),
        fileType: 'wma',
      );
      if (file != null) playFile(file);
    }
  }

  void playFile(File file) async {
    try {
      await _audioPlayer.stop();
      await _audioPlayer
          .play(DeviceFileSource(file.path, mimeType: 'audio/x-ms-wma'));
    } catch (e) {
      print('error from playFile function: $e');
    }
  }

  void pause() {
    _audioPlayer.pause();
  }

  void playPause() {
    if (isPlaying) {
      pause();
    } else {
      play();
    }
  }

  void seek(Duration duration) {
    _audioPlayer.seek(duration);
  }

  void setCurrentIndex(int index) {
    if (index >= _playList.length) {
      _currentIndex = 0;
    } else if (index < 0) {
      _currentIndex = _playList.length - 1;
    } else {
      _currentIndex = index;
    }
  }

  void next() {
    _currentDuration = Duration.zero;
    setCurrentIndex(_currentIndex + 1);
    stop();
    play();
  }

  void previous() {
    _currentDuration = Duration.zero;
    setCurrentIndex(_currentIndex - 1);
    stop();
    play();
  }

  void stop() {
    _audioPlayer.stop();
  }

  void fastForward() {
    _audioPlayer.seek(_currentDuration + const Duration(seconds: 5));
  }

  void rewind() {
    _audioPlayer.seek(_currentDuration - const Duration(seconds: 5));
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
