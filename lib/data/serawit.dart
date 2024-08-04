import 'package:mezgebe_sbhat/data/pdf_list.dart';
import 'package:mezgebe_sbhat/models/menu_list_parent.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import '../models/song.dart';

class SerawitMenu extends PlayListParent {
  @override
  Uri get baseUri => Uri.parse(
      "https://www.ethiopianorthodox.org/amharic/yeqolotbet/serawitemelaekt/");

  @override
  List<Song> get playList => [
        Song(
          audioUrl: '${baseUri}hawariyat/geezehawariayt.wma',
          title: 'geezehawariayt',
        ),
        Song(
          audioUrl: '${baseUri}hawariyat/ezelhawariyat.wma',
          title: 'ezelhawariyat',
        ),
        Song(
          audioUrl: '${baseUri}hawariyat/derebhawariyat.wma',
          title: 'derebhawariyat',
        ),
        //
        Song(
          audioUrl: '${baseUri}egzi/geezeegzi.wma',
          title: 'geezeegzi',
        ),
        Song(
          audioUrl: '${baseUri}egzi/ezelegzi.wma',
          title: 'ezelegzi',
        ),
        //
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/geezeyohaneswelde.wma',
          title: 'geezeyohaneswelde',
        ),
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/ezelyohaneswelde.wma',
          title: 'ezelyohaneswelde',
        ),
        Song(
          audioUrl: '${baseUri}yohanessweldenegodguad/derebyohaneswelde.wma',
          title: 'derebyohaneswelde',
        ),
        //
        Song(
          audioUrl: '${baseUri}selestumeate/geezezeselestumeeat.wma',
          title: 'geezezeselestumeeat',
        ),
        Song(
          audioUrl: '${baseUri}selestumeate/ezelzeselestumeeat.wma',
          title: 'ezelzeselestumeeat',
        ),
        //
        Song(
          audioUrl: '${baseUri}stmary/geezemary.wma',
          title: 'geezemary',
        ),
        Song(
          audioUrl: '${baseUri}stmary/ezelmary.wma',
          title: 'ezelmary',
        ),
        //
        Song(
          audioUrl: '${baseUri}athnasius/geezeathansius.wma',
          title: 'geezeathansius',
        ),
        Song(
          audioUrl: '${baseUri}athnasius/ezelathnasius.wma',
          title: 'ezelathnasius',
        ),
        //
        Song(
          audioUrl: '${baseUri}basil/geezebasil.wma',
          title: 'geezebasil',
        ),
        Song(
          audioUrl: '${baseUri}basil/ezilbasil.wma',
          title: 'ezilbasil',
        ),
        //
        Song(
          audioUrl: '${baseUri}selestumeate/geezezeselestumeeatdereb.wma',
          title: 'geezezeselestumeeatdereb',
        ),
        Song(
          audioUrl: '${baseUri}selestumeate/ezelzeselestumeeatdereb.wma',
          title: 'ezelzeselestumeeatdereb',
        ),
        //
        Song(
          audioUrl: '${baseUri}gorgorios/geezegregory.wma',
          title: 'geezegregory',
        ),
        Song(
          audioUrl: '${baseUri}gorgorios/ezilgregory.wma',
          title: 'ezilgregory',
        ),
        //
        Song(
          audioUrl: '${baseUri}Epiphaneous/geezepihpaneous.wma',
          title: 'geezepihpaneous',
        ),
        Song(
          audioUrl: '${baseUri}Epiphaneous/ezilepiphaneous.wma',
          title: 'ezilepiphaneous',
        ),
        //
        Song(
          audioUrl: '${baseUri}yohanessafewerq/geezjohnchrysostom.wma',
          title: 'geezjohnchrysostom',
        ),
        Song(
          audioUrl: '${baseUri}yohanessafewerq/eziljohnchrysosotom.wma',
          title: 'eziljohnchrysosotom',
        ),
        //
        Song(
          audioUrl: '${baseUri}qerelos/geezecyril.wma',
          title: 'geezecyril',
        ),
        Song(
          audioUrl: '${baseUri}qerelos/ezilcyril.wma',
          title: 'ezilcyril',
        ),
        //
        Song(
          audioUrl: '${baseUri}yaekobzeserug/geezejacobzeserug.wma',
          title: 'geezejacobzeserug',
        ),
        Song(
          audioUrl: '${baseUri}yaekobzeserug/eziljacobzeserug.wma',
          title: 'eziljacobzeserug',
        ),
        //
        Song(
          audioUrl: '${baseUri}gorgoriuskale/geezegorgoriuskale.wma',
          title: 'geezegorgoriuskale',
        ),
        Song(
          audioUrl: '${baseUri}gorgoriuskale/ezilgregorksecond.wma',
          title: 'ezilgregorksecond',
        ),
      ];

  @override
  String get folderName => 'serawit';

  @override
  Pdf get pdf => serawitAndMelkaQurbanPdf;
}
