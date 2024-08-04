import 'package:mezgebe_sbhat/data/pdf_list.dart';
import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import 'package:mezgebe_sbhat/models/song.dart';

class SrateBewiotZeGorgoryos extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema timehert bet/1 kidse zedebere abay/9 kidase ze gorgorious/1 geeze/3  sereate bewiot idase/');

  @override
  String get folderName => 'srate_bewiot_ze_gorgoryos';

  @override
  List<Song> get playList => [
        Song(
          title: "አርኅው_ኆኃተ_መኳንንት_-_፫ተ_ጊዜ",
          audioUrl: "${baseUri}1.mp3",
        ),
        Song(
          title: "መኑ_ውእቱ_ዝንቱ_-_፪ተ_ጊዜ",
          audioUrl: "${baseUri}2.mp3",
        ),
        Song(
          title: "አርኅዉ_ኆኃተ_መኳንንት_-_፫ተ_ጊዜ",
          audioUrl: "${baseUri}3.mp3",
        ),
        Song(
          title: "መኑ_ውእቱ_ዝንቱ_-_፪ተ_ጊዜ_2",
          audioUrl: "${baseUri}4.mp3",
        ),
        Song(
          title: "እግዚአብሔር_አምላከ_ኃያላን",
          audioUrl: "${baseUri}5.mp3",
        ),
        Song(
          title: "ይባእ_ንጉሠ_ስብሐት",
          audioUrl: "${baseUri}6.mp3",
        ),
      ];

  @override
  Pdf get pdf => kdaseGorgoryosPdf;
}

class GeezKdaseGorgoryos extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema timehert bet/1 kidse zedebere abay/9 kidase ze gorgorious/1 geeze/');

  @override
  String get folderName => 'geez_kdase_gorgoryos';

  @override
  List<Song> get playList => [
        Song(
          title: "ጸልዩ_በእንተ_አበዊነ",
          audioUrl: "${baseUri}1.mp3",
        ),
        Song(
          title: "ነአኵቶ_ለገባሬ_ሠናያት",
          audioUrl: "${baseUri}2.mp3",
        ),
        Song(
          title: "ነአኵተከ_አምላክ",
          audioUrl: "${baseUri}3.mp3",
        ),
        Song(
          title: "የማነ_እዴሁ_እሳት",
          audioUrl: "${baseUri}4.mp3",
        ),
        Song(
          title: "አልቦ_አድልዎ",
          audioUrl: "${baseUri}5.mp3",
        ),
        Song(
          title: "እስመ_አንተ",
          audioUrl: "${baseUri}6.mp3",
        ),
        Song(
          title: "ንነጽር",
          audioUrl: "${baseUri}7.mp3",
        ),
        Song(
          title: "ዝንቱ_ውእቱ",
          audioUrl: "${baseUri}8.mp3",
        ),
        Song(
          title: "ወሥውር_ውእቱ",
          audioUrl: "${baseUri}9.mp3",
        ),
        Song(
          title: "መጽአ_እመልዕልተ_ሰማይ",
          audioUrl: "${baseUri}10.mp3",
        ),
        Song(
          title: "ናንቀዐዱ_ኀቤከ",
          audioUrl: "${baseUri}11.mp3",
        ),
        Song(
          title: "ንሰፍሕ_ለከ",
          audioUrl: "${baseUri}12.mp3",
        ),
        Song(
          title: "ሐመ_በፈቃዱ",
          audioUrl: "${baseUri}13.mp3",
        ),
        Song(
          title: "ኦ_አምለክ_ዘለዓለም",
          audioUrl: "${baseUri}14.mp3",
        ),
        Song(
          title: "የዐቍር_ማየ",
          audioUrl: "${baseUri}15.mp3",
        ),
        Song(
          title: "፫ቱ_እደው_ሀለው",
          audioUrl: "${baseUri}16.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_አርአየ",
          audioUrl: "${baseUri}17 emosaenahu.mp3",
        ),
        Song(
          title: "ኅቡረ_ምስለ_አቡሁ",
          audioUrl: "${baseUri}17 ibure.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ጸገወ",
          audioUrl: "${baseUri}18 emhosaenah.mp3",
        ),
        Song(
          title: "ግሩም_ውእቱ",
          audioUrl: "${baseUri}18 girum.mp3",
        ),
        Song(
          title: "ክቡር_ውእቱ",
          audioUrl: "${baseUri}19.mp3",
        ),
        Song(
          title: "ወማእከሉ_ዘምሉእ",
          audioUrl: "${baseUri}20.mp3",
        ),
        Song(
          title: "ነሥአ_ኅብስተ",
          audioUrl: "${baseUri}21.mp3",
        ),
        Song(
          title: "አእኰተ_ባረከ",
          audioUrl: "${baseUri}22.mp3",
        ),
        Song(
          title: "ወካዕበ_ነጸረ",
          audioUrl: "${baseUri}23.mp3",
        ),
        Song(
          title: "እለ_ተጋባእክሙ",
          audioUrl: "${baseUri}24.mp3",
        ),
        Song(
          title: "ቀዳሚሁ_ቃል",
          audioUrl: "${baseUri}25.mp3",
        ),
        Song(
          title: "ለብሰ_ሥጋ",
          audioUrl: "${baseUri}26.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_ዘንተ",
          audioUrl: "${baseUri}27.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_አክሊለ",
          audioUrl: "${baseUri}28.mp3",
        ),
        Song(
          title: "ንዑ_ናስተብርክ",
          audioUrl: "${baseUri}29.mp3",
        ),
        Song(
          title: "ድርብ_ባሕር_ርዕደት",
          audioUrl: "${baseUri}30.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_ዕፁበ_ግብረ",
          audioUrl: "${baseUri}32.mp3",
        ),
        Song(
          title: "መለኮቶ_አርአየ",
          audioUrl: "${baseUri}33.mp3",
        ),
        Song(
          title: "ዑደተ_ሆሣዕና",
          audioUrl: "${baseUri}34.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ወሀበ",
          audioUrl: "${baseUri}37.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ጸገወ_2",
          audioUrl: "${baseUri}38.mp3",
        ),
        Song(
          title: "እምቅድመ_ሕሊና",
          audioUrl: "${baseUri}39.mp3",
        ),
        Song(
          title: "በእንተ_ብፁዕ_ወቅዱስ",
          audioUrl: "${baseUri}40.mp3",
        ),
        Song(
          title: "ለእሉ_አግብርቲከ",
          audioUrl: "${baseUri}41.mp3",
        ),
        Song(
          title: "ለእሉኒ_ወለኵሎሙ",
          audioUrl: "${baseUri}42.mp3",
        ),
        Song(
          title: "ይ_ካ_ለእሉኒ_ወለኵሎሙ",
          audioUrl: "${baseUri}43.mp3",
        ),
        Song(
          title: "በእንተ_እሉ_አግብርቲከ",
          audioUrl: "${baseUri}44.mp3",
        ),
        Song(
          title: "መቅድመ_አዕርፍ",
          audioUrl: "${baseUri}45.mp3",
        ),
        Song(
          title: "ወለነሂ_እለ_ተጋባእነ",
          audioUrl: "${baseUri}46.mp3",
        ),
        Song(
          title: "አልኅቅ_ሕፃናቲነ",
          audioUrl: "${baseUri}47.mp3",
        ),
        Song(
          title: "እግዚኦ_መሐረነ",
          audioUrl: "${baseUri}48.mp3",
        ),
        Song(
          title: "ባርክ_ርእስየ",
          audioUrl: "${baseUri}49.mp3",
        ),
        Song(
          title: "ደሚረከ",
          audioUrl: "${baseUri}50.mp3",
        ),
        Song(
          title: "ሀበነ_ንኅበር",
          audioUrl: "${baseUri}51.mp3",
        ),
        Song(
          title: "ፈኑ_ጸጋ_መንፈስ_ቅዱስ",
          audioUrl: "${baseUri}52.mp3",
        ),
        Song(
          title: "እግዚአብሔር_ዘተናገረ",
          audioUrl: "${baseUri}53.mp3",
        ),
        Song(
          title: "ወኩን_ዐቃቤ",
          audioUrl: "${baseUri}54.mp3",
        ),
        Song(
          title: "ተንሥእ_ኦ_አብርሃም",
          audioUrl: "${baseUri}55.mp3",
        ),
        Song(
          title: "ወተንሥአ_አብርሃም",
          audioUrl: "${baseUri}56.mp3",
        ),
        Song(
          title: "ወሰፍሐ_እዴሁ",
          audioUrl: "${baseUri}57.mp3",
        ),
        Song(
          title: "ወተንሥአ_አብርሃም_2",
          audioUrl: "${baseUri}58.mp3",
        ),
        Song(
          title: "ይ_ካ_=_ወተንሥአ_አብርሃም",
          audioUrl: "${baseUri}59.mp3",
        ),
        Song(
          title: "ኦ_እግዚአብሔር",
          audioUrl: "${baseUri}60.mp3",
        ),
        Song(
          title: "ሠራዊተ_መላእክቲሁ",
          audioUrl: "${baseUri}61.mp3",
        ),
        Song(
          title: "ወይኬልልዎ",
          audioUrl: "${baseUri}62.mp3",
        ),
        Song(
          title: "ወንብጻሕ_ቅድመ_ገጹ",
          audioUrl: "${baseUri}63.mp3",
        ),
        Song(
          title: "ወካዕበ_ናስተበቍዖ",
          audioUrl: "${baseUri}64.mp3",
        ),
        Song(
          title: "እስመ_ዘአፍቀረ",
          audioUrl: "${baseUri}65.mp3",
        ),
        Song(
          title: "ኦ_ዘፈቶከ",
          audioUrl: "${baseUri}66.mp3",
        ),
        Song(
          title: "ኀድፍ_ነፍሰነ",
          audioUrl: "${baseUri}67.mp3",
        ),
        Song(
          title: "ቶሳሕከ_ማየ",
          audioUrl: "${baseUri}68.mp3",
        ),
        Song(
          title: "ኀቤከ_ንስእል",
          audioUrl: "${baseUri}69.mp3",
        ),
      ];

  @override
  Pdf get pdf => kdaseGorgoryosPdf;
}

class EzlKdaseGorgoryos extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      'https://www.ethiopianorthodox.org/churchmusic/zema timehert bet/1 kidse zedebere abay/9 kidase ze gorgorious/2 ezil/');

  @override
  String get folderName => 'ezl_kdase_gorgoryos';

  @override
  List<Song> get playList => [
        Song(
          title: "ጸልዩ_በእንተ_አበዊነ",
          audioUrl: "${baseUri}1.mp3",
        ),
        Song(
          title: "ነአኵቶ_ለገባሬ_ሠናያት",
          audioUrl: "${baseUri}2.mp3",
        ),
        Song(
          title: "ነአኵተከ_አምላክ",
          audioUrl: "${baseUri}3.mp3",
        ),
        Song(
          title: "የማነ_እዴሁ_እሳት",
          audioUrl: "${baseUri}4.mp3",
        ),
        Song(
          title: "አልቦ_አድልዎ",
          audioUrl: "${baseUri}5.mp3",
        ),
        Song(
          title: "እስመ_አንተ",
          audioUrl: "${baseUri}6.mp3",
        ),
        Song(
          title: "ንነጽር",
          audioUrl: "${baseUri}7.mp3",
        ),
        Song(
          title: "ዝንቱ_ውእቱ",
          audioUrl: "${baseUri}8.mp3",
        ),
        Song(
          title: "ወሥውር_ውእቱ",
          audioUrl: "${baseUri}9.mp3",
        ),
        Song(
          title: "መጽአ_እመልዕልተ_ሰማይ",
          audioUrl: "${baseUri}10.mp3",
        ),
        Song(
          title: "ናንቀዐዱ_ኀቤከ",
          audioUrl: "${baseUri}11.mp3",
        ),
        Song(
          title: "ንሰፍሕ_ለከ",
          audioUrl: "${baseUri}12.mp3",
        ),
        Song(
          title: "ሐመ_በፈቃዱ",
          audioUrl: "${baseUri}13.mp3",
        ),
        Song(
          title: "ኦ_አምለክ_ዘለዓለም",
          audioUrl: "${baseUri}14.mp3",
        ),
        Song(
          title: "የዐቍር_ማየ",
          audioUrl: "${baseUri}15.mp3",
        ),
        Song(
          title: "፫ቱ_እደው_ሀለው",
          audioUrl: "${baseUri}16.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_አርአየ",
          audioUrl: "${baseUri}17.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ጸገወ",
          audioUrl: "${baseUri}18.mp3",
        ),
        Song(
          title: "ክቡር_ውእቱ",
          audioUrl: "${baseUri}19.mp3",
        ),
        Song(
          title: "ወማእከሉ_ዘምሉእ",
          audioUrl: "${baseUri}20.mp3",
        ),
        Song(
          title: "ነሥአ_ኅብስተ",
          audioUrl: "${baseUri}21.mp3",
        ),
        Song(
          title: "አእኰተ_ባረከ",
          audioUrl: "${baseUri}22.mp3",
        ),
        Song(
          title: "ወካዕበ_ነጸረ",
          audioUrl: "${baseUri}23.mp3",
        ),
        Song(
          title: "እለ_ተጋባእክሙ",
          audioUrl: "${baseUri}24.mp3",
        ),
        Song(
          title: "ቀዳሚሁ_ቃል",
          audioUrl: "${baseUri}25.mp3",
        ),
        Song(
          title: "ለብሰ_ሥጋ",
          audioUrl: "${baseUri}26.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_ዘንተ",
          audioUrl: "${baseUri}27.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_አክሊለ",
          audioUrl: "${baseUri}28.mp3",
        ),
        Song(
          title: "ንዑ_ናስተብርክ",
          audioUrl: "${baseUri}29.mp3",
        ),
        Song(
          title: "ድርብ_ባሕር_ርዕደት",
          audioUrl: "${baseUri}30.mp3",
        ),
        Song(
          title: "ሞት_ፈርሀ",
          audioUrl: "${baseUri}31.mp3",
        ),
        Song(
          title: "ንዑ_ትርአዩ_ዕፁበ_ግብረ",
          audioUrl: "${baseUri}32.mp3",
        ),
        Song(
          title: "መለኮቶ_አርአየ",
          audioUrl: "${baseUri}33.mp3",
        ),
        Song(
          title: "ዑደተ_ሆሣዕና",
          audioUrl: "${baseUri}34.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ወሀበ",
          audioUrl: "${baseUri}37.mp3",
        ),
        Song(
          title: "እምሆሣዕናሁ_ጸገወ_2",
          audioUrl: "${baseUri}38.mp3",
        ),
        Song(
          title: "እምቅድመ_ሕሊና",
          audioUrl: "${baseUri}39.mp3",
        ),
        Song(
          title: "በእንተ_ብፁዕ_ወቅዱስ",
          audioUrl: "${baseUri}40.mp3",
        ),
        Song(
          title: "ለእሉ_አግብርቲከ",
          audioUrl: "${baseUri}41.mp3",
        ),
        Song(
          title: "ለእሉኒ_ወለኵሎሙ",
          audioUrl: "${baseUri}42.mp3",
        ),
        Song(
          title: "ይ_ካ_ለእሉኒ_ወለኵሎሙ",
          audioUrl: "${baseUri}43.mp3",
        ),
        Song(
          title: "በእንተ_እሉ_አግብርቲከ",
          audioUrl: "${baseUri}44.mp3",
        ),
        Song(
          title: "መቅድመ_አዕርፍ",
          audioUrl: "${baseUri}45.mp3",
        ),
        Song(
          title: "ወለነሂ_እለ_ተጋባእነ",
          audioUrl: "${baseUri}46.mp3",
        ),
        Song(
          title: "አልኅቅ_ሕፃናቲነ",
          audioUrl: "${baseUri}47.mp3",
        ),
        Song(
          title: "እግዚኦ_መሐረነ",
          audioUrl: "${baseUri}48.mp3",
        ),
        Song(
          title: "ባርክ_ርእስየ",
          audioUrl: "${baseUri}49.mp3",
        ),
        Song(
          title: "ደሚረከ",
          audioUrl: "${baseUri}50.mp3",
        ),
        Song(
          title: "ሀበነ_ንኅበር",
          audioUrl: "${baseUri}51.mp3",
        ),
        Song(
          title: "ፈኑ_ጸጋ_መንፈስ_ቅዱስ",
          audioUrl: "${baseUri}52.mp3",
        ),
        Song(
          title: "እግዚአብሔር_ዘተናገረ",
          audioUrl: "${baseUri}53.mp3",
        ),
        Song(
          title: "ወኩን_ዐቃቤ",
          audioUrl: "${baseUri}54.mp3",
        ),
        Song(
          title: "ተንሥእ_ኦ_አብርሃም",
          audioUrl: "${baseUri}55.mp3",
        ),
        Song(
          title: "ወተንሥአ_አብርሃም",
          audioUrl: "${baseUri}56.mp3",
        ),
        Song(
          title: "ወሰፍሐ_እዴሁ",
          audioUrl: "${baseUri}57.mp3",
        ),
        Song(
          title: "ወተንሥአ_አብርሃም_2",
          audioUrl: "${baseUri}58.mp3",
        ),
        Song(
          title: "ይ_ካ_=_ወተንሥአ_አብርሃም",
          audioUrl: "${baseUri}59.mp3",
        ),
        Song(
          title: "ኦ_እግዚአብሔር",
          audioUrl: "${baseUri}60.mp3",
        ),
        Song(
          title: "ሠራዊተ_መላእክቲሁ",
          audioUrl: "${baseUri}61.mp3",
        ),
        Song(
          title: "ወይኬልልዎ",
          audioUrl: "${baseUri}62.mp3",
        ),
        Song(
          title: "ወንብጻሕ_ቅድመ_ገጹ",
          audioUrl: "${baseUri}63.mp3",
        ),
        Song(
          title: "ወካዕበ_ናስተበቍዖ",
          audioUrl: "${baseUri}64.mp3",
        ),
        Song(
          title: "እስመ_ዘአፍቀረ",
          audioUrl: "${baseUri}65.mp3",
        ),
        Song(
          title: "ኦ_ዘፈቶከ",
          audioUrl: "${baseUri}66.mp3",
        ),
        Song(
          title: "ኀድፍ_ነፍሰነ",
          audioUrl: "${baseUri}67.mp3",
        ),
        Song(
          title: "ቶሳሕከ_ማየ",
          audioUrl: "${baseUri}68.mp3",
        ),
        Song(
          title: "ኀቤከ_ንስእል",
          audioUrl: "${baseUri}69.mp3",
        ),
      ];

  @override
  Pdf get pdf => kdaseGorgoryosPdf;
}
