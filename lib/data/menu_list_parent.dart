import 'package:mezgebe_sbhat/models/song.dart';

abstract class MenuListParent {
  Uri get baseUri;
  List<Song> get playList;
}
