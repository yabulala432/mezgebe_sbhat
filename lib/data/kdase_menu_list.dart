import 'package:mezgebe_sbhat/data/menu_list_parent.dart';
import '../models/song.dart';

class KdasePlaylist extends MenuListParent {
  @override
  Uri get baseUri =>
      Uri.parse("https://www.ethiopianorthodox.org/amharic/yeqolotbet/");

  // String kdasePdf =
  //     'https://www.ethiopianorthodox.org/amharic/yeqolotbet/zematimeheret/teseteo.pdf';

  @override
  List<Song> get playList => [
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/01emenebeha.MP3',
          title: 'emenebeha',
          pageNumber: 4,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/02meskelareha.MP3',
          title: 'meskelareha',
          pageNumber: 4,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/03kuluzegebra.MP3',
          title: 'kuluzegebra',
          pageNumber: 4,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/04haleluya.MP3',
          title: 'haleluya',
          pageNumber: 4,
        ),
        Song(
          audioUrl:
              '${baseUri}part1kidasetimhert/05haleluyayosefwenikodimos.MP3',
          title: 'haleluyayosefwenikodimos',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/06antiwuetu.MP3',
          title: 'antiwuetu',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/07beaman.MP3',
          title: 'beaman',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/08woiyesebehewo.MP3',
          title: 'woiyesebehewo',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/09tsedekuese.MP3',
          title: 'tsedekuese',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/10sebhatleabwewelde.MP3',
          title: 'sebhatleabwewelde',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/11tenseouletselot.MP3',
          title: 'tenseouletselot',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/12egziotesehalene.MP3',
          title: 'egziotesehalene',
          pageNumber: 6,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/13mislemenfeseke.MP3',
          title: 'mislemenfeseke',
          pageNumber: 6,
        ),
        Song(
          audioUrl:
              '${baseUri}part1kidasetimhert/14tseliyu_hisuweastebkueou.MP3',
          title: 'tseliyu_hisuweastebkueou',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/15kiriyaleson.MP3',
          title: 'kiriyaleson',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/16tenseou.MP3',
          title: 'tenseou',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/16tenseou.MP3',
          title: 'tenseou',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/17tseliyubeneteeleyabeou.MP3',
          title: 'tseliyubeneteeleyabeou',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/18tewekefmebaon.MP3',
          title: 'tewekefmebaon',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/20sigedu.MP3',
          title: 'sigedu',
          pageNumber: 8,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/21kidemeke.MP3',
          title: 'kidemeke',
          pageNumber: 10,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/23leabwewelde.MP3',
          title: 'leabwewelde',
          pageNumber: 10,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/24kidistbetkirstian.MP3',
          title: 'kidistbetkirstian',
          pageNumber: 10,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/25dingelmariam.MP3',
          title: 'dingelmariam',
          pageNumber: 10,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/26maetentezewerq.MP3',
          title: 'maetentezewerq',
          pageNumber: 10,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/28kuluzeiyafekero.MP3',
          title: 'kuluzeiyafekero',
          pageNumber: 12,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/29kidushawariapaulos.MP3',
          title: 'kidushawariapaulos',
          pageNumber: 12,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/31oahaweye.MP3',
          title: 'oahaweye',
          pageNumber: 12,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/32kidusselus.MP3',
          title: 'kidusselus',
          pageNumber: 12,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/34kiduskiduskidus.MP3',
          title: 'kiduskiduskidus',
          pageNumber: 14,
        ),
        Song(
          audioUrl:
              '${baseUri}part1kidasetimhert/35tensou_tseliyubenetselamebetekirstian.MP3',
          title: 'nibab_tseliyubenetselamebetekirstian',
          pageNumber: 14,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/36zeweetu.MP3',
          title: 'zeweetu',
          pageNumber: 14,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/37kirstostenseaemutan.MP3',
          title: 'kirstostenseaemutan',
          pageNumber: 16,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/38osiluskidus.MP3',
          title: 'osiluskidus',
          pageNumber: 20,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/40tseliyubenetewengel.MP3',
          title: 'tseliyubenetewengel',
          pageNumber: 20,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/41yireseyenedilewane.MP3',
          title: 'yireseyenedilewane',
          pageNumber: 20,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/42haleluya.MP3',
          title: 'haleluya_kumu',
          pageNumber: 20,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/45bewengelmerahekene.MP3',
          title: 'bewengelmerahekene',
          pageNumber: 22,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/46tefesehu.MP3',
          title: 'tefesehu',
          pageNumber: 22,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/47neamenhabe.MP3',
          title: 'neamenhabe',
          pageNumber: 22,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/48elukirubel.MP3',
          title: 'elukirubel',
          pageNumber: 24,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/49menuyimeseleke.MP3',
          title: 'menuyimeseleke',
          pageNumber: 24,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/50kedamihuqal.MP3',
          title: 'kedamihuqal',
          pageNumber: 24,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/51tsaou.MP3',
          title: 'tsaou',
          pageNumber: 24,
        ),
        Song(
          audioUrl:
              '${baseUri}part1kidasetimhert/52tseliyubenteselamebetekirstian.MP3',
          title: 'tseliyubenteselamebetekirstian',
          pageNumber: 24,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/53tseliyubeentezati.MP3',
          title: 'tseliyubeentezati',
          pageNumber: 26,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/54maheberene.MP3',
          title: 'maheberene',
          pageNumber: 26,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/55nibelkuline.MP3',
          title: 'nibelkuline',
          pageNumber: 26,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/56amekeniyo.MP3',
          title: 'amekeniyo',
          pageNumber: 26,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/57tselothaimanot.MP3',
          title: 'tselothaimanot',
          pageNumber: 30,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/58sebhatleegziabher.MP3',
          title: 'sebhatleegziabher',
          pageNumber: 32,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/59tseliyubenteselam.MP3',
          title: 'tseliyubenteselam',
          pageNumber: 32,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/60akotetekurban.MP3',
          title: 'akotetekurban',
          pageNumber: 34,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/61mislemenfeske.MP3',
          title: 'mislemenfeske',
          pageNumber: 34,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/62retuyidelu.MP3',
          title: 'retuyidelu',
          pageNumber: 34,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/63binehabeegziabher.MP3',
          title: 'binehabeegziabher',
          pageNumber: 34,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/65meharomu.MP3',
          title: 'meharomu',
          pageNumber: 34,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/67eleteneberutensou.MP3',
          title: 'eleteneberutensou',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/68wustetsebah.MP3',
          title: 'wustetsebah',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/69ninetser.MP3',
          title: 'ninetser',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/70aweseou.MP3',
          title: 'aweseou',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/71kiduskidus.MP3',
          title: 'kiduskidus',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/72tezekerene.MP3',
          title: 'tezekerene',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/73anseou.MP3',
          title: 'anseou',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/74neamin.MP3',
          title: 'neamin',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/75amenamen.MP3',
          title: 'amenamen',
          pageNumber: 36,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/76amenamennn.MP3',
          title: 'amenamen2',
          pageNumber: 38,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/77nezenumoteke.MP3',
          title: 'nezenumoteke',
          pageNumber: 38,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/78amenegziomehaene.MP3',
          title: 'amenegziomehaene',
          pageNumber: 38,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/79bekululiebe.MP3',
          title: 'bekululiebe',
          pageNumber: 38,
        ),
        Song(
          audioUrl: '${baseUri}part1kidasetimhert/80bekemehalo.MP3',
          title: 'bekemehalo',
          pageNumber: 38,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/01habenenihber.MP3',
          title: 'habenenihber',
          pageNumber: 40,
        ),
        // Song(
        //   audioUrl: '${baseUri}part2kidaseetimhert/03tensou.MP3',
        //   title: 'tensou',
        // pageNumber: 40,
        // ),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/04abunezebesemayat.MP3',
            title: 'abunezebesemayat',
            pageNumber: 40),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/05bekememihereteke.MP3',
          title: 'bekememihereteke',
          pageNumber: 40,
        ),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/07arhewu.MP3',
            title: 'arhewu',
            pageNumber: 42),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/08eletiqewumu.MP3',
            title: 'eletiqewumu',
            pageNumber: 42),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/09sigedu.MP3',
            title: 'sigedu',
            pageNumber: 42),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/10kidemekeegezio.MP3',
            title: 'kidemekeegezio',
            pageNumber: 42),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/11netser.MP3',
            title: 'netser',
            pageNumber: 42),
        Song(
            audioUrl: '${baseUri}part2kidaseetimhert/12ahaduabekidus.MP3',
            title: 'ahaduabekidus',
            pageNumber: 42),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/13mislemenfeseke.MP3',
          title: 'mislemenfeseke',
          pageNumber: 44,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/14egezio.MP3',
          title: 'egezio',
          pageNumber: 44,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/15egziomeharenekirstos.MP3',
          title: 'egziomeharenekirstos',
          pageNumber: 44,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/16egzioooo.MP3',
          title: 'egzio5',
          pageNumber: 44,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/17elewuste niseha.MP3',
          title: 'elewuste_niseha',
          pageNumber: 44,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/19selmleki.MP3',
          title: 'selmleki',
          pageNumber: 56,
        ),
        Song(
          audioUrl:
              '${baseUri}part2kidaseetimhert/20selamlemelkeahanaweeyaqem.MP3',
          title: 'selamlemelkeahanaweeyaqem',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/21amhatsenetdingel.MP3',
          title: 'amhatsenetdingel',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/22nazazetenemhazen.MP3',
          title: 'nazazetenemhazen',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/23weladiteamlakmariam.MP3',
          title: 'weladiteamlakmariam',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/24belaywetu.MP3',
          title: 'belaywetu',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/25yiweredmenfesekidus.MP3',
          title: 'yiweredmenfesekidus',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/26selamlekmutsdekan.MP3',
          title: 'selamlekmutsdekan',
        ),
        Song(
          audioUrl:
              '${baseUri}part2kidaseetimhert/27selamlekmutsadekanzati.MP3',
          title: 'selamlekmutsadekanzati',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/28egeziokuneneke.MP3',
          title: 'egeziokuneneke',
          pageNumber: 56,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/29egezio.MP3',
          title: 'egezio',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/30beentemariam.MP3',
          title: 'beentemariam',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/31sealilene.MP3',
          title: 'sealilene',
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/32tseliyubeenteane.MP3',
          title: 'tseliyubeenteane',
          pageNumber: 46,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/33kiduskiduskidus.MP3',
          title: 'kiduskiduskidus',
          pageNumber: 48,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/34neakuto.MP3',
          title: 'neakuto',
          pageNumber: 48,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/35temetone.MP3',
          title: 'temetone',
          pageNumber: 48,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/36wenaekuto.MP3',
          title: 'wenaekuto',
          pageNumber: 48,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/38abunezebesemayat.MP3',
          title: 'abunezebesemayat',
          pageNumber: 50,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/39adenenuarsetekimu.MP3',
          title: 'adenenuarsetekimu',
          pageNumber: 52,
        ),
        Song(
          audioUrl:
              '${baseUri}part2kidaseetimhert/40amenegziabhereyibarekene.MP3',
          title: 'amenegziabhereyibarekene',
          pageNumber: 52,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/41mislemenfeseke.MP3',
          title: 'mislemenfeseke',
          pageNumber: 52,
        ),
        Song(
          audioUrl:
              '${baseUri}part2kidaseetimhert/42amenegzebheryibarekeneleagbertihubeselam.MP3',
          title: 'amenegzebheryibarekeneleagbertihubeselam',
          pageNumber: 52,
        ),
        Song(
          audioUrl: '${baseUri}part2kidaseetimhert/43etewubeselam.MP3',
          title: 'etewubeselam',
          pageNumber: 52,
        )
      ];

  @override
  String get folderName => 'kdases';
}
