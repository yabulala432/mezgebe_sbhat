import 'package:mezgebe_sbhat/data/seatat.dart';
import 'package:mezgebe_sbhat/models/menu.dart';

List<Menu> seatatMenu = [
  Menu(
    title: 'ሰዓታት ዘደብረ ዓባይ ክፍል አንድ',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "አአትብ - ኢየሱስ ክርስቶስ",
    playList: SeatatPartOne(),
  ),
  Menu(
    title: 'ምስባካት',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "ሰዓታት ዘደብረ ዓባይ",
    playList: SeatatMsbakat(),
  ),
  Menu(
    title: 'ኵሎሙ',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "ሰዓታት ዘደብረ ዓባይ",
    playList: SeatatKulomu(),
  ),
  Menu(
    title: 'መስተብቊዕ እስከ መሐረነ',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "ሰዓታት ዘደብረ ዓባይ",
    playList: SeatatMestebqueMeharene(),
  ),
  Menu(
    title: 'መቅድመ ተዓምር',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "ሰዓታት ዘደብረ ዓባይ",
    playList: SeatatMekdmeTeamr(),
  ),
  Menu(
    title: 'እሴብሕ ጸጋኪ',
    name: 'seatat',
    imageUrl: 'assets/images/seatat.jpg',
    subTitle: "ሰዓታት ዘደብረ ዓባይ",
    playList: SeatatEsebhTsegaki(),
  ),
];
