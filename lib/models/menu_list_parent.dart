import 'package:mezgebe_sbhat/models/song.dart';

abstract class PlayListParent {
  Uri get baseUri;
  List<Song> get playList;
  String get folderName;
}
