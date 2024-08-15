import 'package:mezgebe_sbhat/data/pdf_list.dart';
import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import 'package:mezgebe_sbhat/models/song.dart';

final msbakBaseUri =
    Uri.parse('https://www.ethiopianorthodox.org/amharic/yeqolotbet/');

class MeskeremMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}gitsawe/01 wetebarek.wma",
          title: "01_ወትባርክ",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/02 weemeni.wma",
          title: "02_ወእመኒ",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/03esmeadhanka.wma",
          title: "03_እስመ_አድኀንካ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/04wewehabkomu.wma",
          title: "04_ወወሀብኮሙ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/05awalidenigest.wma",
          title: "05_አዋልደ_ንግሥት",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/06wegesetse.wma",
          title: "06_ወገሠጸ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/07esemememherehige.wma",
          title: "07_እስመ_መምህረ_ሕግ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/08kahenatike.wma",
          title: "08_ካህናቲከ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/09demtsu.wma",
          title: "09_ደምፁ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/10wetekewum.wma",
          title: "10_ወትቀውም",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/11tenseoulaleliye.wma",
          title: "11_ተንስኡ_ላዕሌየ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/12haleyu.wma",
          title: "12_ሐለዩ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/13bitsuan.wma",
          title: "13_ብፁዓን",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/14wewehabkomu.wma",
          title: "14_ወወሀብኮሙ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/15bitsuzehareyiko.wma",
          title: "15_ብፁዕ_ዘኀረይኮ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/16ebeaakeb.wma",
          title: "16_እቤ_አዐቅብ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/17werekebnahu.wma",
          title: "17_ወረከብናሁ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/18antetequenen.wma",
          title: "18_አንተ_ትኴንን",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/19temeyetkeni.wma",
          title: "19_ተመየጥከኒ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/20esemememherehige.wma",
          title: "20_እስመ_መምህረ_ሕግ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/21adehneni.wma",
          title: "21_አድኅነኒ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/22esmeabuye.wma",
          title: "22_እስመ_አቡየ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/23weyerauahezab.wma",
          title: "23_ወይርአዩ_አሕዛብ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/24wustekulumider.wma",
          title: "24_ውስተ_ኲሉ_ምድር",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/25ayeteegoyeye.wma",
          title: "25_ወአይቴ_እጐይይ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/26bekidmemelaektike.wma",
          title: "26_በቅድመ_መላእክቲከ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/27ahelefkene.wma",
          title: "27_አኅለፍከነ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/28esmeadhanka.wma",
          title: "28_እስመ_አድኀንካ",
          pageNumber: 10,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/29egziabheryibeleni.wma",
          title: "29_እግዚአብሔር_ይቤለኒ",
          pageNumber: 10,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/30nahusenaye.wma",
          title: "30_ናሁ_ሠናይ",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'meskerem';

  @override
  Pdf get pdf => meskeremPdf;
}

class TkmtMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/01 tezeker.wma",
          title: "01_ተዘከር",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/02 begeziabher.wma",
          title: "02_በእግዚአብሔር",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/03 awaledenigest.wma",
          title: "03_አዋልደ_ንግሥት",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/04 ethiopia.wma",
          title: "04_ኢትዮጵያ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/05 weketelu.wma",
          title: "05_ወቀተሉ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/06 ebewu.wma",
          title: "06_እበውዕ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/07 tserhu.wma",
          title: "07_ጸርሑ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/08 egziabher.wma",
          title: "08_እግዚአብሔር",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/09 nahu.wma",
          title: "09_ናሁ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/10 kahenatike.wma",
          title: "10_ካህናቲከ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/11 esmememhere.wma",
          title: "11_እስመ_መምህረ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/12 wealalku.wma",
          title: "12_ወአላዐልኩ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/13 tadekise.wma",
          title: "13_ጻድቅሰ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/14 yibarekuke.wma",
          title: "14_ይባርኩከ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/15 engeromu.wma",
          title: "15_እነግሮሙ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/16 kiyake.wma",
          title: "16_ኪያከ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/17 libenitsuha.wma",
          title: "17_ልበ_ንጹሐ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/18 weyerewuyu.wma",
          title: "18_ወይረውዩ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/19 wesobehe.wma",
          title: "19_ወሶበሂ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/20 arweyo.wma",
          title: "20_አርውዮ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/21 wetekewum.wma",
          title: "21_ወትቀውም",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/22 alboneger.wma",
          title: "22_አልቦ_ነገር",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/23 esmememhere.wma",
          title: "23_እስመ_መምህረ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/24 wesegahomuni.wma",
          title: "24_ወሥጋሆሙኒ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/25 kiburmotu.wma",
          title: "25_ክቡር_ሞቱ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/26 yiwesek.wma",
          title: "26_ይዌሰክ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/27 egziabherse.wma",
          title: "27_እግዚአብሔርሰ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/28 teweledetsadkan.wma",
          title: "28_ትውልደ_ጻድቃን",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/29 misleke.wma",
          title: "29_ምስሌከ",
          pageNumber: 10,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/tikemet/30 nahuyize.wma",
          title: "30_ናሁ_ይእዜ",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'tkmt';

  @override
  Pdf get pdf => tkmtPdf;
}

class HdarMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/01weenegersemeke.wma",
          title: "01_ወእነግር_ስምዐከ",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/02zikeretsadek.wma",
          title: "02_ዝክረ_ጻድቅ",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/03wezehego.wma",
          title: "03_ወዘሕጎ",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/04esmebenetahu.wma",
          title: "04እስመ_በእንቲአሁ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/05hatiateye.wma",
          title: "05_ኃጢአትየ",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/06ofeninrekewo.wma",
          title: "06_ኦፍኒ_ረከበት",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/07werayu.wma",
          title: "07_ወይርአዩ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/08tetsene.wma",
          title: "08_ተፅዕነ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/09negusese.wma",
          title: "09_ንጉሥሰ",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/11meseretatiha.wma",
          title: "11_መሠረታቲሃ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/12egziobehayileke.wma",
          title: "12_እግዚኦ_በኃይልከ",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/13barekewo.wma",
          title: "13_ባርክዎ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/14esemeabuye.wma",
          title: "14_እስመ_አቡየ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/15werayuahezab.wma",
          title: "15_ወይርአዩ_አሕዛብ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/16egeziobehayilike.wma",
          title: "16_እግዚኦ_በኃይልከ",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/17esmemeherehige.wma",
          title: "17_እስመ_መምህረ_ሕግ",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/18alboneger.wma",
          title: "18_አልቦ_ነገር",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/20esmemeherehige.wma",
          title: "20_እስመ_መምህረ_ሕግ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/21egetewa.wma",
          title: "21_ዕግትዋ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/22werayuahezab.wma",
          title: "22_ወይርአዩ_አሕዛብ",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/23webehabeyese.wma",
          title: "23_ወበኀቤየሰ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/24weasteyomu.wma",
          title: "24_ወአስተዮሙ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/25lisanekelebatike.wma",
          title: "25_ልሳነ_ከለባቲከ",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/26esmetezekere.wma",
          title: "26_እስመ_ተዘከረ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/27lemeneteangelegu.wma",
          title: "27_ለምንት_አንገለጉ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/28berhsereke.wma",
          title: "28_በርህ_ሠረቀ",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/29meselekeqedamawi.wma",
          title: "29_ምስሌከ_ቀዳማዊ",
          pageNumber: 10,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/hidarmisbak/30kiberunigus.wma",
          title: "30_ክቡር_ንጉሥ",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'hdar';

  @override
  Pdf get pdf => hdarPdf;
}

class TahsasMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/01 Tahesas.mp3",
          title: "01_እስመ_ቅንዐተ_ቤትከ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/02 Tahesas.mp3",
          title: "02_እገኒ_ለከ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/03 Tahesas.mp3",
          title: "03_ስምዒ_ወለትየ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/04 Tahesas.mp3",
          title: "04_ወነደ_እሳት",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/05 Tahesas.mp3",
          title: "05_ወይእዜኒ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/06 Tahesas.mp3",
          title: "06_ይኄይስ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/07 Tahesas.mp3",
          title: "07_እጸርኅ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/08 Tahesas.mp3",
          title: "08_እስመ_ኀብዐኒ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/09 Tahesas.mp3",
          title: "09_ብፁዕ_ሕዝብ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/10 Tahesas.mp3",
          title: "10_ወተወከፍከኒ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/11 Tahesas.mp3",
          title: "11_ወሰብሕዎ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/12 Tahesas.mp3",
          title: "12_ወሳሙኤልኒ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/13 Tahesas.mp3",
          title: "13_ተፈሣሕ_በእግዚአብሄር",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/14 Tahesas.mp3",
          title: "14_ፈኑ_ብርሀነከ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/15 Tahesas.mp3",
          title: "15_ቀብፁኒ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/16 Tahesas.mp3",
          title: "16_በጽባሕ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/17 Tahesas.mp3",
          title: "17_ወተሳለቁ_ላዕሌነ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/19 Tahesas.mp3",
          title: "19_ባርክዎ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/20 Tahesas.mp3",
          title: "20_እግዚኦ_አምላኪየ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/22 Tahesas.mp3",
          title: "22_ህየንተ_አበውኪ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/24 Tahesas.mp3",
          title: "24_አድኅነኒ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/25 Tahesas.mp3",
          title: "25_ጻድቅ_እግዚአብሔር",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/26 Tahesas.mp3",
          title: "26_ወአንሰ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/27 Tahesas.mp3",
          title: "27_ወመላእክትኒ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/28 Tahesas.mp3",
          title: "28_የሐዩ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tahesas/daily/29 Tahesas.mp3",
          title: "29_ነገሥተ_ተርሴስ",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'tahsas';

  @override
  Pdf get pdf => tahsasPdf;
}

class TirMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/01 tir.mp3",
          title: "01_እስመ_በጻሕኮ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/02 tir.mp3",
          title: "02_ወኢይትቃወመከ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/03 tir.mp3",
          title: "03_በርህ_ሠረቀ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/05 tir.mp3",
          title: "05_ኅሥዎ_ለእግዚአብሔር",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/06 tir.mp3",
          title: "06_ወይከውን",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/08 tir.mp3",
          title: "08_ይስምዑ_የዋሃን",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/09 tir.mp3",
          title: "09_ናሁ_ሰማዕናሁ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/10 tir.mp3",
          title: "10_ለበስኩ_ሰቀ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/11 tir.mp3",
          title: "11_ባሕርኒ_ርእየት",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/12 tir.mp3",
          title: "12_ወምስካይነ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/13 tir.mp3",
          title: "13_መኑ_አምላክ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/14 tir.mp3",
          title: "14_ፍኖተ_ጽድቅከ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/16 tir.mp3",
          title: "16_ብፁዕ_ብእሲ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/17 tir.mp3",
          title: "17_ወአዐውድ_ምሥዋዒከ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/18 tir.mp3",
          title: "18_እስመ_ኀልቀ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/19 tir.mp3",
          title: "19_ወባሕቱ_መከሩ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/20 tir.mp3",
          title: "20_ኅፅበኒ_ወአንጽሐኒ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/21 tir.mp3",
          title: "21_ትሴብሖ_ኢየሩሳሌም",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/22 tir.mp3",
          title: "22_እምክቡዳነ_አቅርንት",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/23 tir.mp3",
          title: "23_ወበመንፈስ_አዚዝ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/26 tir.mp3",
          title: "26_ምዕረ_ነበበ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/27 tir.mp3",
          title: "27_እትአመን",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/28 tir.mp3",
          title: "28_ወይኤምሮሙ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/29 tir.mp3",
          title: "29_እስመ_ፈላሲ_አነ",
          pageNumber: 10,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/tir/daily/30 tir.mp3",
          title: "30_ሠረቀ_ብርሃን",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'tir';

  @override
  Pdf get pdf => tirPdf;
}

class YekatitMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/01 yeka.mp3",
          title: "01_ሣህሉ_ለእግዚአብሔር",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/02 yeka.mp3",
          title: "02_አንተ_አጽናዕካ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/06 yeka.mp3",
          title: "06_ከርቤ_ወቀንዐት",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/07 yeka.mp3",
          title: "07_ብከ_ንወግዖሙ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/08 yeka.mp3",
          title: "08_ዘያፀግባ_እምበረከቱ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/09 yeka.mp3",
          title: "09_ይብልዑ_ነዳያን",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/10 yeka.mp3",
          title: "10_አስተጋብዑ_ሎቱ_ጻድቃኑ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/11 yeka.mp3",
          title: "11_ግበር_ለገብርከ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/13 yeka.mp3",
          title: "13_ያጸንዖሙ_እግዚአብሔር",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/14 yeka.mp3",
          title: "14_አሕፃከ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/15 yeka.mp3",
          title: "15_ከመ_ይንግሩ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/16 yeka.mp3",
          title: "16_እስመ_ትቤ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/17 yeka.mp3",
          title: "17_ርሑቅ_ሕይወት",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/18 yeka.mp3",
          title: "18_ይዘግቡ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/19 yeka.mp3",
          title: "19_ኲሉ_ፍኖቱ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/20 yeka.mp3",
          title: "20_ተገኀስ_እምእኩይ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/21 yeka.mp3",
          title: "21_ኪያከ_ተወከሉ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/22 yeka.mp3",
          title: "22_ዘይሰማዕ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/23 yeka.mp3",
          title: "23_ወተሣለቁ_ላዕሌነ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/24 yeka.mp3",
          title: "24_ሡዕ_ለእግዚአብሔር",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/25 yeka.mp3",
          title: "25_ወዐውየዉ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/26 yeka.mp3",
          title: "26_እስመ_ሰማዕኩ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/27yeka.mp3",
          title: "27_ዐገቱኒ_ከለባትዐገቱኒ_ከለባት",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/28yeka.mp3",
          title: "28_እግዚአብሔር_ይረድኦ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/29 yeka.mp3",
          title: "29_ወኢሰምዑኒ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/yekatit/daily/30 yeka.mp3",
          title: "30_ገሥፆሰ_ገሠጸኒ",
          pageNumber: 9,
        ),
      ];

  @override
  String get folderName => 'yekatit';

  @override
  Pdf get pdf => yekatitPdf;
}

class MegabitMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/01 megabit.mp3",
          title: "01_አንተ_ውእቱ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/02 megabit.mp3",
          title: "02_አንሰ_ነዳይ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/03 megabit.mp3",
          title: "03_እስከ_ማእዜኑ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/04 megabit.mp3",
          title: "04_አርእየነ_እግዚኦ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/05 megabit.mp3",
          title: "05_ወትከይድ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/06 megabit.mp3",
          title: "06_ዘይፌውሶሙ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/07 megabit.mp3",
          title: "07_እሳት_ወተይ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/08 megabit.mp3",
          title: "08_እግዚአብሔር_ያበርህ_ሊተ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/09 megabit.mp3",
          title: "09_እግዚአብሔር_መክፈልትየ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/13 megabit.mp3",
          title: "13_አስተጋብኡ_ሎቱ_ጻድቃኑ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/14 megabit.mp3",
          title: "14_ይርአዩ_ራትዓን",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/15 megabit.mp3",
          title: "15_ጻድቃንሰ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/16 megabit.mp3",
          title: "16_ወትሰይመኒ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/17 megabit.mp3",
          title: "17_ተሣሃለኒ_እግዚኦ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/18 megabit.mp3",
          title: "18_ሢም_እግዚኦ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/19 megabit.mp3",
          title: "19_ዘየሐውር_በንጹሕ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/20 megabit.mp3",
          title: "20_ወተሐሥያ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/21 megabit.mp3",
          title: "21_ሚጥ_ገጸከ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/22 megabit.mp3",
          title: "22_ኦ_እግዚኦ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/23 megabit.mp3",
          title: "23_ናሁ_ይሁብ_ቃሎ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/24 megabit.mp3",
          title: "24_ሰብሖ_ለምሕረትከ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/25 megabit.mp3",
          title: "25_ለብዉ_ዘንተ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/26 megabit.mp3",
          title: "26_ተሐፅበኒ_እምበረድ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/27 megabit.mp3",
          title: "27_ተንሥኡ_ላዕሌየ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/28 megabit.mp3",
          title: "28_ወአንበሩኒ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/29 megabit.mp3",
          title: "29_አንሰ_ተሠየምኩ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/megabit/daily/30 megabit.mp3",
          title: "30_ወተአመኑ_በቃሉ",
          pageNumber: 9,
        ),
      ];

  @override
  String get folderName => 'megabit';

  @override
  Pdf get pdf => megabitPdf;
}

class MiyazyaMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/01 miazia.mp3",
          title: "01_miazia",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/02 miazia.mp3",
          title: "02_miazia",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/03 miazia.mp3",
          title: "03_miazia",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/04 miazia.mp3",
          title: "04_miazia",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/05 miazia.mp3",
          title: "05_miazia",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/06 miazia.mp3",
          title: "06_miazia",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/07 miazia.mp3",
          title: "07_miazia",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/08 miazia.mp3",
          title: "08_miazia",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/11 miazia.mp3",
          title: "11_miazia",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/13 miazia.mp3",
          title: "13_miazia",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/14 miazia.mp3",
          title: "14_miazia",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/15 miazia.mp3",
          title: "15_miazia",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/16 miazia.mp3",
          title: "16_miazia",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/17 miazia.mp3",
          title: "17_miazia",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/18 miazia.mp3",
          title: "18_miazia",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/19 miazia.mp3",
          title: "19_miazia",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/20 miazia.mp3",
          title: "20_miazia",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/21 miazia.mp3",
          title: "21_miazia",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/22 miazia.mp3",
          title: "22_miazia",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/23 miazia.mp3",
          title: "23_miazia",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/24 miazia.mp3",
          title: "24_miazia",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/25 miazia.mp3",
          title: "25_miazia",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/26 miazia.mp3",
          title: "26_miazia",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/27 miazia.mp3",
          title: "27_miazia",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/miazia/daily/28 miazia.mp3",
          title: "28_miazia",
          pageNumber: 8,
        ),
      ];

  @override
  String get folderName => 'miyazya';

  @override
  Pdf get pdf => miyazyaPdf;
}

class GnbotMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/01 ginbot.mp3",
          title: "01_ginbot",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/02 ginbot.mp3",
          title: "02_ginbot",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/03 ginbot.mp3",
          title: "03_ginbot",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/04 ginbot.mp3",
          title: "04_ginbot",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/05 ginbot.mp3",
          title: "05_ginbot",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/06 ginbot.mp3",
          title: "06_ginbot",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/07 ginbot.mp3",
          title: "07_ginbot",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/08 ginbot.mp3",
          title: "08_ginbot",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/09 ginbot.mp3",
          title: "09_ginbot",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/10 ginbot.mp3",
          title: "10_ginbot",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/11 ginbot.mp3",
          title: "11_ginbot",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/12 ginbot.mp3",
          title: "12_ginbot",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/13 ginbot.mp3",
          title: "13_ginbot",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/14 ginbot.mp3",
          title: "14_ginbot",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/15 ginbot.mp3",
          title: "15_ginbot",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/16 ginbot.mp3",
          title: "16_ginbot",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/17 ginbot.mp3",
          title: "17_ginbot",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/18 ginbot.mp3",
          title: "18_ginbot",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/19 ginbot.mp3",
          title: "19_ginbot",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/20 ginbot.mp3",
          title: "20_ginbot",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/21 ginbot.mp3",
          title: "21_ginbot",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/22 ginbot.mp3",
          title: "22_ginbot",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/24 ginbot.mp3",
          title: "24_ginbot",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/25 ginbot.mp3",
          title: "25_ginbot",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/26 ginbot.mp3",
          title: "26_ginbot",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/27 ginbot.mp3",
          title: "27_ginbot",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/28 ginbot.mp3",
          title: "28_ginbot",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/ginbot/daily/29 ginbot.mp3",
          title: "29_ginbot",
          pageNumber: 9,
        ),
      ];

  @override
  String get folderName => 'gnbot';

  @override
  Pdf get pdf => gnbotPdf;
}

class SeneMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/01sene .mp3",
          title: "01sene_",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/02 sene .mp3",
          title: "02_sene ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/03 sene .mp3",
          title: "03_sene ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/04 sene .mp3",
          title: "04_sene ",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/05 sene .mp3",
          title: "05_sene ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/06 sene .mp3",
          title: "06_sene ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/07 sene .mp3",
          title: "07_sene ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/08 sene .mp3",
          title: "08_sene ",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/09 sene .mp3",
          title: "09_sene ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/10 sene .mp3",
          title: "10_sene ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/11 sene .mp3",
          title: "11_sene ",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/12 sene .mp3",
          title: "12_sene ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/13 sene .mp3",
          title: "13_sene ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/14 sene .mp3",
          title: "14_sene ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/15 sene .mp3",
          title: "15_sene ",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/16 sene .mp3",
          title: "16_sene ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/17 sene .mp3",
          title: "17_sene ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/18 sene .mp3",
          title: "18_sene ",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/20 sene .mp3",
          title: "20_sene ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/21 sene .mp3",
          title: "21_sene ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/22 sene .mp3",
          title: "22_sene ",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/23 sene .mp3",
          title: "23_sene ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/24 sene .mp3",
          title: "24_sene ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/25 sene .mp3",
          title: "25_sene ",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/26 sene .mp3",
          title: "26_sene ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/27 sene .mp3",
          title: "27_sene ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/28 sene .mp3",
          title: "28_sene ",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/29 sene .mp3",
          title: "29_sene ",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/sene/daily/30 sene .mp3",
          title: "30_sene ",
          pageNumber: 9,
        ),
      ];

  @override
  String get folderName => 'sene';

  @override
  Pdf get pdf => senePdf;
}

class HamleMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/01 hamle.mp3",
          title: "01_hamle",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/02 hamle.mp3",
          title: "02_hamle",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/03 hamle.mp3",
          title: "03_hamle",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/04 hamle.mp3",
          title: "04_hamle",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/06 hamle.mp3",
          title: "06_hamle",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/07 hamle.mp3",
          title: "07_hamle",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/08 hamle.mp3",
          title: "08_hamle",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/09 hamle.mp3",
          title: "09_hamle",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/10 hamle.mp3",
          title: "10_hamle",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/11 hamle.mp3",
          title: "11_hamle",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/12 hamle.mp3",
          title: "12_hamle",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/15 hamle.mp3",
          title: "15_hamle",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/16 hamle.mp3",
          title: "16_hamle",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/17 hamle.mp3",
          title: "17_hamle",
          pageNumber: 5,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/18 hamle.mp3",
          title: "18_hamle",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/19 hamle.mp3",
          title: "19_hamle",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/20 hamle.mp3",
          title: "20_hamle",
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/21 hamle.mp3",
          title: "21_hamle",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/22 hamle.mp3",
          title: "22_hamle",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/23 hamle.mp3",
          title: "23_hamle",
          pageNumber: 7,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/24 hamle.mp3",
          title: "24_hamle",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/26 hamle.mp3",
          title: "26_hamle",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/27 hamle.mp3",
          title: "27_hamle",
          pageNumber: 8,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/28 hamle.mp3",
          title: "28_hamle",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "$baseUri../../churchmusic/zema timehert bet/Misbak/hamle/daily/30 hamle.mp3",
          title: "30_hamle",
          pageNumber: 9,
        ),
      ];

  @override
  String get folderName => 'hamle';

  @override
  Pdf get pdf => hamlePdf;
}

class NehaseMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/01weengersemake.wma",
          title: "01weengersemake",
          pageNumber: 1,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/02weyiwesedudenagelederha.wma",
          title: "02weyiwesedudenagelederha",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/04egziobehaileke.wma",
          title: "04egziobehaileke",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/05weteseyemeni.wma",
          title: "05weteseyemeni",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/06weyisegedalotu.wma",
          title: "06weyisegedalotu",
          pageNumber: 2,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/07betsubitsimeseretathiha.wma",
          title: "07betsubitsimeseretathiha",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/08wedeketesat.wma",
          title: "08wedeketesat",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/09weteqewumnigest.wma",
          title: "09weteqewumnigest",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/10tezekermahebereke.wma",
          title: "10tezekermahebereke",
          pageNumber: 3,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/11heyenteabeweki.wma",
          title: "11heyenteabeweki",
          pageNumber: 3,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/12bekidememelaektkeegziokuneneke.wma",
          title: "12bekidememelaektkeegziokuneneke",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/13debertilultaborwearmonem.wma",
          title: "13debertilultaborwearmonem",
          pageNumber: 4,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/14zeazezke.wma",
          title: "14zeazezke",
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/16qedesemahederowetezianewu.wma",
          title: "16qedesemahederowetezianewu",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/17gesetsose.wma",
          title: "17gesetsose",
          pageNumber: 5,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/18zeabeyalebereket.wma",
          title: "18zeabeyalebereket",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/19beegziabher.wma",
          title: "19beegziabher",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/20netsereni.wma",
          title: "20netsereni",
          pageNumber: 6,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/21awalidenigist.wma",
          title: "21awalidenigist",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/22wegesetse.wma",
          title: "22wegesetse",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/23weagbaekene.wma",
          title: "23weagbaekene",
          pageNumber: 7,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/24esmebenetiahu.wma",
          title: "24esmebenetiahu",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/25menutesfaye.wma",
          title: "25menutesfaye",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/26bitsuante.wma",
          title: "26bitsuante",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/27neunetfesah.wma",
          title: "27neunetfesah",
          pageNumber: 8,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/28zesera.wma",
          title: "28zesera",
          pageNumber: 9,
        ),
        Song(
          audioUrl:
              "${baseUri}gitsawe/nehasemisbak/29ezemerweelebumiselekeqedamawi.wma",
          title: "29ezemerweelebumiselekeqedamawi",
          pageNumber: 9,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/nehasemisbak/30menkertelahiya.wma",
          title: "30menkertelahiya",
          pageNumber: 10,
        ),
      ];

  @override
  String get folderName => 'nehase';

  @override
  Pdf get pdf => nehasePdf;
}

class PuagmenMsbak extends PlayListParent {
  @override
  Uri get baseUri => msbakBaseUri;

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/01esmetsedkewemeswate.wma",
          title: "01esmetsedkewemeswate",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/02qedamihaletibeb.wma",
          title: "02qedamihaletibeb",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/03egziabheresemehale.wma",
          title: "03egziabheresemehale",
          pageNumber: 1,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/04kilalisaneke.wma",
          title: "04kilalisaneke",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/05lailetekula.wma",
          title: "05lailetekula",
          pageNumber: 2,
        ),
        Song(
          audioUrl: "${baseUri}gitsawe/pagumenmisbak/06wetezeyanewuemelet.wma",
          title: "06wetezeyanewuemelet",
          pageNumber: 2,
        ),
      ];

  @override
  String get folderName => 'puagmen';

  @override
  Pdf get pdf => puagmenPdf;
}
