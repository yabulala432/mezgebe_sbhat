import 'package:mezgebe_sbhat/data/pdf_list.dart';
import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import '../models/song.dart';

class SeatatPartOne extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}01 aateb.mp3",
          title: "አአትብ",
        ),
        Song(
          audioUrl: "${baseUri}02 mestebku.mp3",
          title: "መስተብቍዕ",
        ),
        Song(
          audioUrl: "${baseUri}03 Yitbarek.mp3",
          title: "ይትባረክ_እግዚአብሔር",
        ),
        Song(
          audioUrl: "${baseUri}04 Ewedeseki.mp3",
          title: "እዌድሰኪ_ኦ_ድንግል",
        ),
        Song(
          audioUrl: "${baseUri}05 Benete duyan.mp3",
          title: "መስተብቍዕ_በእንተ_ዱያን",
        ),
        Song(
          audioUrl: "${baseUri}06 Benete Ele Yinegedu.mp3",
          title: "መስተብቍዕ_በእንተ_እለ_ይነግዱ",
        ),
        Song(
          audioUrl: "${baseUri}07 Bente Zinamat.mp3",
          title: "መስተብቍዕ_በእንተ_ዝናማት",
        ),
        Song(
          audioUrl: "${baseUri}08 Beente Duyan_araray.mp3",
          title: "መስተብቍዕ_በእንተ_ዱያን_አራራይ",
        ),
        Song(
          audioUrl: "${baseUri}09 benete ele yenegedu_araray.mp3",
          title: "መስተብቍዕ_በእንተ_እለ_ይነግዱ_አራራይ",
        ),
        Song(
          audioUrl: "${baseUri}10 Benete zinamat_araray.mp3",
          title: "መስተብቍዕ_በእንተ_ዝናማት_አራራይ",
        ),
        Song(
          audioUrl: "${baseUri}11Tezeker.mp3",
          title: "ተዘከር",
        ),
        Song(
          audioUrl: "${baseUri}12 Nei.mp3",
          title: "ንዒ",
        ),
        Song(
          audioUrl: "${baseUri}13 Nisebeho.mp3",
          title: "ንሴብሖ_ለእግዚአብሔር",
        ),
        Song(
          audioUrl: "${baseUri}14 ehud menbab.mp3",
          title: "የእሑድ_ምንባባት_መርገፍ",
        ),
        Song(
          audioUrl: "${baseUri}15 mestebeku benete fere mider.mp3",
          title: "መስተብቍዕ_በእንተ_ፍሬ_ምድር",
        ),
        Song(
          audioUrl: "${baseUri}16 mestebeku benete mayate aflag.mp3",
          title: "መስተብቍዕ_በእንተ_ማያተ_አፍላግ",
        ),
        Song(
          audioUrl: "${baseUri}17 mestebeku benete mefkere sebe.mp3",
          title: "መስተብቍዕ_በእንተ_መፍቀሬ_እግዚአብሔር",
        ),
        Song(
          audioUrl: "${baseUri}18 Eyesus kirstos to keme hames tebabat.mp3",
          title: "ኢየሱስ_ክርስቶስ",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}

class SeatatMsbakat extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}19 misbak menefeke lelelit.mp3",
          title: "መንፈቀ_ሌሊት",
        ),
        Song(
          audioUrl: "${baseUri}20 misbak egeziabher.mp3",
          title: "እግዚአብሔር_አምላኪየ",
        ),
        Song(
          audioUrl: "${baseUri}21 misbak lelite.mp3",
          title: "ሌሊተ_ተዛዋዕኩ",
        ),
        Song(
          audioUrl: "${baseUri}22 misbak tezekerku.mp3",
          title: "ተዘከርኩ_በሌሊት",
        ),
        Song(
          audioUrl: "${baseUri}23 misbak belelit.mp3",
          title: "በሌሊት_አንስኡ",
        ),
        Song(
          audioUrl: "${baseUri}24 esme weetu zewehabe.mp3",
          title: "እስመ_ውእቱ_ዘወሀበ",
        ),
        Song(
          audioUrl: "${baseUri}25 reseyene deliwane.mp3",
          title: "ረስየነ_ድልዋነ",
        ),
        Song(
          audioUrl: "${baseUri}26 esme teleale semu lebahetitu.mp3",
          title: "እስመ_ተለዐለ_ስሙ",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}

class SeatatKulomu extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}27 Kulomu zezeweter.mp3",
          title: "ዘዘወትር",
        ),
        Song(
          audioUrl: "${baseUri}28 Kulomu zegezetene mariam.mp3",
          title: "ዘእግዝእትነ_ማርያም",
        ),
        Song(
          audioUrl: "${baseUri}29 Kulomu zekuskuam.mp3",
          title: "ዘቊስቋም",
        ),
        Song(
          audioUrl: "${baseUri}30 Kulomu zefilseta.mp3",
          title: "ዘፍልሰታ",
        ),
        Song(
          audioUrl: "${baseUri}31 Kulomu zemelaekt.mp3",
          title: "ዘመላእክት",
        ),
        Song(
          audioUrl: "${baseUri}32 Kulomu zebeale egeziabher.mp3",
          title: "ዘበዓለ_እግዚአብሔር",
        ),
        Song(
          audioUrl: "${baseUri}33 Kulomu zeselassie.mp3",
          title: "ዘሥላሴ",
        ),
        Song(
          audioUrl: "${baseUri}34 mogesena.mp3",
          title: "ሞገስነ",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}

class SeatatMestebqueMeharene extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}35 mestebeku be enete ele nomu.mp3",
          title: "መስተብቍዕ_በእንተ_ኖሙ",
        ),
        Song(
          audioUrl: "${baseUri}36 mestebeku be enete agebertihu.mp3",
          title: "መስተብቍዕ_በእንተ_አግብርቲሁ",
        ),
        Song(
          audioUrl: "${baseUri}37 mestebeku be enete selam.mp3",
          title: "መስተብቍዕ_በእንተ_ሰላም",
        ),
        Song(
            audioUrl: "${baseUri}38 michaele liqe melaekt.mp3",
            title: "ሚካኤል_ኀበ_ተርኅወ_ገነት"),
        Song(
          audioUrl: "${baseUri}39 melekea filseta.mp3",
          title: "መልክዐ_ፍልሰታ",
        ),
        Song(
            audioUrl: "${baseUri}40 habe terhewe to seali lene.mp3",
            title: "ኀበ_ተርኅወ_ገነት_ሰአሊ_,ለነ"),
        Song(
          audioUrl: "${baseUri}41 wetebe mariam.mp3",
          title: "ወትቤ_ማርያም",
        ),
        Song(
          audioUrl: "${baseUri}42 lenoh hameru.mp3",
          title: "ለኖኅ_ሐመሩ",
        ),
        Song(
          audioUrl: "${baseUri}43 o reherete hilna.mp3",
          title: "ኦ_ርኅርኅተ_ኅሊና",
        ),
        Song(
          audioUrl: "${baseUri}44 hale luja nisged.mp3",
          title: "ሃሌ_ሉያ_ንስግድ",
        ),
        Song(
          audioUrl: "${baseUri}45 tefesehi mariam leadam fsikahu.mp3",
          title: "ተፈሥሒ_ኦ_ማርያም_ለአዳም_ፋሲካሁ",
        ),
        Song(
          audioUrl: "${baseUri}46 tefesehi mariam dingelete sega.mp3",
          title: "ተፈሥሒ_ማርያም_ድንግልተ_ሥጋ",
        ),
        Song(
          audioUrl: "${baseUri}47 wekayibe nastebekuo lenegesete kuline.mp3",
          title: "መስተብቍዕ_ለንግሥተ_ኲልነ",
        ),
        Song(
          audioUrl: "${baseUri}48 wekayibe nastebekuo leetse kidus meskel.mp3",
          title: "መስተብቍዕ_ለዕፀ_ቅዱስ_መስቀል",
        ),
        Song(
          audioUrl: "${baseUri}49 sebhate fikur zeegezeetene.mp3",
          title: "ስብሐተ_ፍቅር_ዘእግዝእትነ",
        ),
        Song(
          audioUrl: "${baseUri}50 sebhate fikur zegioris.mp3",
          title: "ስብሐተ_ፍቅር_ዘጊዮርጊስ_ዘጻድቃን_ዘመላእክት",
        ),
        Song(
          audioUrl: "${baseUri}51 meharene ab.mp3",
          title: "መሐረነ_አብ",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}

class SeatatMekdmeTeamr extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}52 hale luya leab boa melak.mp3",
          title: "ሃሌ_ሉያ",
        ),
        Song(
          audioUrl: "${baseUri}53 bereketatiha.mp3",
          title: "በረከታቲሃ_ለዛቲ",
        ),
        Song(
          audioUrl: "${baseUri}54 eyesus kirstos.mp3",
          title: "ኢየሱስ_ክርስቶስ_2",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}

class SeatatEsebhTsegaki extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/churchmusic/zema%20timehert%20bet/seatat%20letemariwoch/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: "${baseUri}55 esebh tsegaki zezeweter.mp3",
          title: "እሴብሕ_ጸጋኪ_ዘዘወትር",
        ),
        Song(
          audioUrl: "${baseUri}56 esebh tsegaki zekuskuam.mp3",
          title: "እሴብሕ_ጸጋኪ_ዘቁስቋም",
        ),
        Song(
          audioUrl: "${baseUri}57 esebh tsegaki zezemene tsiege.mp3",
          title: "እሴብሕ_ጸጋኪ_ዘዘመነ_ጽጌ",
        ),
        Song(
          audioUrl: "${baseUri}58 esebh tsegaki zehwriat.mp3",
          title: "እሴብሕ_ጸጋኪ_ዘሐዋርያት_ወዘሰማዕታት_ዘጻድቃን_ዘደብረ_ዘይት_ወዘጳጉሜን",
        ),
        Song(
          audioUrl: "${baseUri}59 esebh tsegaki zemedhanealem.mp3",
          title: "እሴብሕ_ጸጋኪ_ዘመድኃኔዓለም_ወዘመስቀል_ወዘቅንዋት",
        ),
        Song(
          audioUrl: "${baseUri}60 Tselota lemariam.mp3",
          title: "ጸሎታ_ለማርያም",
        ),
      ];

  @override
  String get folderName => 'seatat';

  @override
  Pdf get pdf => seatatPdf;
}
