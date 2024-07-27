import 'package:mezgebe_sbhat/data/menu_list_parent.dart';
import '../models/song.dart';

class SerawitMenu extends MenuListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/amharic/yeqolotbet/serawitemelaekt/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: '${baseUri}hawariyat/geezehawariayt.wma',
          title: 'geezehawariayt',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}hawariyat/ezelhawariyat.wma',
          title: 'ezelhawariyat',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}hawariyat/derebhawariyat.wma',
          title: 'derebhawariyat',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}egzi/geezeegzi.wma',
          title: 'geezeegzi',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}egzi/ezelegzi.wma',
          title: 'ezelegzi',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/geezeyohaneswelde.wma',
          title: 'geezeyohaneswelde',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/ezelyohaneswelde.wma',
          title: 'ezelyohaneswelde',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/derebyohaneswelde.wma',
          title: 'derebyohaneswelde',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}selestumeate/geezezeselestumeeat.wma',
          title: 'geezezeselestumeeat',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}selestumeate/ezelzeselestumeeat.wma',
          title: 'ezelzeselestumeeat',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}stmary/geezemary.wma',
          title: 'geezemary',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}stmary/ezelmary.wma',
          title: 'ezelmary',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}athnasius/geezeathansius.wma',
          title: 'geezeathansius',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}athnasius/ezelathnasius.wma',
          title: 'ezelathnasius',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}basil/geezebasil.wma',
          title: 'geezebasil',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}basil/ezilbasil.wma',
          title: 'ezilbasil',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}selestumeate/geezezeselestumeeatdereb.wma',
          title: 'geezezeselestumeeatdereb',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}selestumeate/ezelzeselestumeeatdereb.wma',
          title: 'ezelzeselestumeeatdereb',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}gorgorios/geezegregory.wma',
          title: 'geezegregory',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}gorgorios/ezilgregory.wma',
          title: 'ezilgregory',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}Epiphaneous/geezepihpaneous.wma',
          title: 'geezepihpaneous',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}Epiphaneous/ezilepiphaneous.wma',
          title: 'ezilepiphaneous',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}yohanessafewerq/geezjohnchrysostom.wma',
          title: 'geezjohnchrysostom',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}yohanessafewerq/eziljohnchrysosotom.wma',
          title: 'eziljohnchrysosotom',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}qerelos/geezecyril.wma',
          title: 'geezecyril',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}qerelos/ezilcyril.wma',
          title: 'ezilcyril',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}yaekobzeserug/geezejacobzeserug.wma',
          title: 'geezejacobzeserug',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}yaekobzeserug/eziljacobzeserug.wma',
          title: 'eziljacobzeserug',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        //
        Song(
          audioUrl: '${baseUri}gorgoriuskale/geezegorgoriuskale.wma',
          title: 'geezegorgoriuskale',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
        Song(
          audioUrl: '${baseUri}gorgoriuskale/ezilgregorksecond.wma',
          title: 'ezilgregorksecond',
          geezImagePath: 'assets/kdase/O_SLUS_KDUS_geez.png',
          amharicImagePath: 'assets/kdase/O_SLUS_KDUS_amharic.png',
        ),
      ];
}
