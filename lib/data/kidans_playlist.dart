import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import 'package:mezgebe_sbhat/models/song.dart';
import 'pdf_list.dart';

class GeezKidanZezewetr extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/1 selam zekidan zezeweter/');

  @override
  String get folderName => 'geez_kidan_zezeweter';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ተሣሃልከ_እግዚኦ_ምድረከ-ይትፌሣሕ  ልብኪ',
          audioUrl: '${baseUri}1 tesehalke.mp3',
          pageNumber: 1,
        ),
        Song(
          title: 'ወሚጥ_መዓተከ-ይእቲ_ማርያም_እምነ',
          audioUrl: '${baseUri}2wemit.mp3',
          pageNumber: 2,
        ),
        Song(
          title: 'እግዚኦ_መሐረነ_ክርስቶስ',
          audioUrl: '${baseUri}3 egezio.mp3',
          pageNumber: 2,
        ),
      ];
}

class GeezKidanZezemeneTsge extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/3 selam zekidan zezemene tsige zezeweter/');

  @override
  String get folderName => 'geez_kidan_zezemene_tsge';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ወሚጥ_መዓተከ_እምኔነ-ተመየጢ_ተመየጢ',
          audioUrl: '${baseUri}wemit.mp3',
          pageNumber: 1,
        ),
      ];
}

class GeezKidanZemenfekeLelit extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/6 zemenefeke leleit geeze/');

  @override
  String get folderName => 'geez_kidan_zemenfeke_lelit';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'መኃትው_ዘጸሎተ_ኪዳን_ዘ፫_ጊዚያት-ቅዱስ',
          audioUrl: '${baseUri}1.mp3',
          pageNumber: 3,
        ),
        Song(
          title: 'ስብሐት_ለእግዚአብሔር',
          audioUrl: '${baseUri}2.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}3.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ለከ_እግዚኦ_ለገባሬ_ኵሉ',
          audioUrl: '${baseUri}4.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ኪያከ_ንሴብሕ_እግዚኦ',
          audioUrl: '${baseUri}5.mp3',
          pageNumber: 5,
        ),
        Song(
          title: 'አምላከ_ብርሃን',
          audioUrl: '${baseUri}6.mp3',
          pageNumber: 5,
        ),
        Song(
          title: 'ኪያከ_ንዌድስ_እግዚኦ',
          audioUrl: '${baseUri}7.mp3',
          pageNumber: 7,
        ),
        Song(
          title: 'ንሤልስ_ለከ',
          audioUrl: '${baseUri}8.mp3',
          pageNumber: 7,
        ),
      ];
}

class GeezKidanZenegh extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/7 zenegeh geeze/');

  @override
  String get folderName => 'geez_kidan_zenegh';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ጸጋ_ዘእግዚአብሔር_የሀሉ_ምስለ_ኵልክሙ',
          audioUrl: '${baseUri}1.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ምስለ_መንፈስከ',
          audioUrl: '${baseUri}2.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ንሰብሖ_ለአምላክነ',
          audioUrl: '${baseUri}3.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}4.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'አፅንዑ_ሕሊና_ልብክሙ',
          audioUrl: '${baseUri}5.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ብነ_ኀበ_እግዚአብሔር',
          audioUrl: '${baseUri}6.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'እግዚአብሔር_አብ_ወሀቤ_ብርሃን',
          audioUrl: '${baseUri}7.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ኪያከ_ንሴብሕ_እግዚኦ',
          audioUrl: '${baseUri}8.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'እግዚኦ_ኢየሱስ_ክርስቶስ',
          audioUrl: '${baseUri}9.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'ኪያከ_ንዌድስ_እግዚኦ',
          audioUrl: '${baseUri}10.mp3',
          pageNumber: 13,
        ),
        Song(
          title: 'ንሤልስ_ለከ_ዘንተ_ቅዱስ',
          audioUrl: '${baseUri}11.mp3',
          pageNumber: 13,
        ),
      ];
}

class EzlKidanZezewetr extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/');

  @override
  String get folderName => 'ezl_kidan_zezewetr';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ተሣሃልከ_እግዚኦ_ምድረከ-ይትፌሣሕ_ልብኪ',
          audioUrl:
              '${baseUri}kidan/zemawoch/2  selam zekidan ezil/1 tesehalke.mp3',
          pageNumber: 1,
        ),
      ];
}

class EzlKidanZezemeneTsge extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/');

  @override
  String get folderName => 'ezl_kidan_zezemene_tsge';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'አርእየነ_እግዚኦ-በ፫-ናሁ_አስተርአየ_ጽጌ',
          audioUrl:
              '${baseUri}kidan/zemawoch/4  selam zekidan bezemene tsige ehud_ezil)/1  areyene.mp3',
          pageNumber: 1,
        ),
      ];
}

class EzlKidanZezemenfekeLelit extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/');

  @override
  String get folderName => 'ezl_kidan_zemenfeke_lelit';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ቅዱስ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/1.mp3',
          pageNumber: 3,
        ),
        Song(
          title: 'እግዚአብሔር_ቅዱስ_ኃያል',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/2.mp3',
          pageNumber: 3,
        ),
        Song(
          title: 'ስብሐት_ለእግዚአብሔር',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/3.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/4.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ለከ_እግዚኦ_ለገባሬ_ኵሉ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/5.mp3',
          pageNumber: 4,
        ),
        Song(
          title: 'ኪያከ_ንሴብሕ_እግዚኦ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/6.mp3',
          pageNumber: 5,
        ),
        Song(
          title: 'አምላከ_ብርሃን',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/7.mp3',
          pageNumber: 5,
        ),
        Song(
          title: 'ኪያከ_ንዌድስ_እግዚኦ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/8.mp3',
          pageNumber: 7,
        ),
        Song(
          title: 'ንሤልስ_ለከ',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/9.mp3',
          pageNumber: 7,
        ),
        Song(
          title: 'አሜን',
          audioUrl: '${baseUri}kidan/zemawoch/8  kidan zezeweter ezil/10.mp3',
          pageNumber: 9,
        ),
      ];
}

class EzlKidanZenegh extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/');

  @override
  String get folderName => 'ezl_kidan_zenegh';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ጸጋ_ዘእግዚአብሔር_የሀሉ_ምስለ_ኵልክሙ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/1.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ምስለ_መንፈስከ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/2.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ንሰብሖ_ለአምላክነ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/3.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/4.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'አፅንዑ_ሕሊና_ልብክሙ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/5.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ብነ_ኀበ_እግዚአብሔር',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/6.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'እግዚአብሔር_አብ_ወሀቤ_ብርሃን',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/7.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ኪያከ_ንሴብሕ_እግዚኦ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/8.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'እግዚኦ_ኢየሱስ_ክርስቶስ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/9.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'ኪያከ_ንዌድስ_እግዚኦ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/10.mp3',
          pageNumber: 13,
        ),
        Song(
          title: 'ንሤልስ_ለከ_ዘንተ_ቅዱስ',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/11.mp3',
          pageNumber: 13,
        ),
        Song(
          title: 'አሜን',
          audioUrl: '${baseUri}kidan/zemawoch/9 zenegeh ezil/12.mp3',
          pageNumber: 15,
        ),
      ];
}

class ArarayKidanZesenbet extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/5  selam zekidan zesenebet -araray/');

  @override
  String get folderName => 'araray_zesenbet';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ዓራራይ_በ፮-ይእቲ_ማርያም_እምነ',
          audioUrl: '${baseUri}1 araray be 6.mp3',
          pageNumber: 2,
        ),
        Song(
          title: 'እግዚኦ_መሐረነ_ክርስቶስ',
          audioUrl: '${baseUri}2 egezio.mp3',
          pageNumber: 2,
        ),
      ];
}

class ArarayKidanZenegh extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/10%20%20zeserk%20araraye/');

  @override
  String get folderName => 'araray_zenegh';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ቅዱስ_እግዚአብሔር',
          audioUrl: '${baseUri}1.mp3',
          pageNumber: 3,
        ),
        Song(
          title: 'ጸጋ_ዘእግዚአብሔር_የሀሉ_ምስለ_ኵልክሙ',
          audioUrl: '${baseUri}2.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ምስለ_መንፈስከ',
          audioUrl: '${baseUri}3.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ንሰብሖ_ለአምላክነ',
          audioUrl: '${baseUri}4.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}5.mp3',
          pageNumber: 9,
        ),
        Song(
          title: 'አፅንዑ_ሕሊና_ልብክሙ',
          audioUrl: '${baseUri}6.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ብነ_ኀበ_እግዚአብሔር',
          audioUrl: '${baseUri}7.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'እግዚአብሔር_አብ_ወሀቤ_ብርሃን',
          audioUrl: '${baseUri}8.mp3',
          pageNumber: 10,
        ),
        Song(
          title: 'ኪያከ_ንሴብሕ_እግዚኦ',
          audioUrl: '${baseUri}9.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'እግዚኦ_ኢየሱስ_ክርስቶስ',
          audioUrl: '${baseUri}10.mp3',
          pageNumber: 12,
        ),
        Song(
          title: 'ኪያከ_ንዌድስ_እግዚኦ',
          audioUrl: '${baseUri}11.mp3',
          pageNumber: 13,
        ),
        Song(
          title: 'ንሤልስ_ለከ_ዘንተ_ቅዱስ',
          audioUrl: '${baseUri}12.mp3',
          pageNumber: 13,
        ),
        Song(
          title: 'አሜን',
          audioUrl: '${baseUri}13.mp3',
          pageNumber: 15,
        ),
      ];
}

class ArarayKidanZeserk extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/kidan/zemawoch/11%20%20zeserk%20araray/');

  @override
  String get folderName => 'araray_zeserk';

  @override
  Pdf get pdf => kidanPdf;

  @override
  List<Song> get playList => [
        Song(
          title: 'ጸጋሁ_ለእግዚአብሔር',
          audioUrl: '${baseUri}1.mp3',
          pageNumber: 15,
        ),
        Song(
          title: 'ምስለ_መንፈስከ',
          audioUrl: '${baseUri}2.mp3',
          pageNumber: 15,
        ),
        Song(
          title: 'አእኵትዎ_ለአምላክነ',
          audioUrl: '${baseUri}3.mp3',
          pageNumber: 15,
        ),
        Song(
          title: 'ርቱዕ_ይደሉ',
          audioUrl: '${baseUri}4.mp3',
          pageNumber: 15,
        ),
        Song(
          title: 'ለከ_ለአብ',
          audioUrl: '${baseUri}5.mp3',
          pageNumber: 15,
        ),
        Song(
          title: 'ንሴብሐከ_እግዚኦ',
          audioUrl: '${baseUri}6.mp3',
          pageNumber: 16,
        ),
        Song(
          title: 'ንዌድሰከ_እግዚኦ_ዘወትረ',
          audioUrl: '${baseUri}7.mp3',
          pageNumber: 16,
        ),
        Song(
          title: 'ንዌድሰከ_እግዚኦ',
          audioUrl: '${baseUri}8.mp3',
          pageNumber: 17,
        ),
        Song(
          title: 'ለከ_ዘእምልብነ',
          audioUrl: '${baseUri}9.mp3',
          pageNumber: 17,
        ),
        Song(
          title: 'አሜን',
          audioUrl: '${baseUri}10.mp3',
          pageNumber: 18,
        ),
      ];
}
