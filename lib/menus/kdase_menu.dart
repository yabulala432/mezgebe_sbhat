import 'package:mezgebe_sbhat/data/kdase_atnatewos.dart';
import 'package:mezgebe_sbhat/data/kdase_baslyos.dart';
import 'package:mezgebe_sbhat/data/kdase_diyoscoros.dart';
import 'package:mezgebe_sbhat/data/kdase_egzi.dart';
import 'package:mezgebe_sbhat/data/kdase_epifanewos.dart';
import 'package:mezgebe_sbhat/data/kdase_gorgoryos.dart';
import 'package:mezgebe_sbhat/data/kdase_gorgoryos_kalie.dart';
import 'package:mezgebe_sbhat/data/kdase_hawaryat.dart';
import 'package:mezgebe_sbhat/data/kdase_kerlos.dart';
import 'package:mezgebe_sbhat/data/kdase_maryam.dart';
import 'package:mezgebe_sbhat/data/kdase_megbiya.dart';
import 'package:mezgebe_sbhat/data/kdase_selestu_miet.dart';
import 'package:mezgebe_sbhat/data/kdase_welde_negodguad.dart';
import 'package:mezgebe_sbhat/data/kdase_yaekob_ze_srug.dart';
import 'package:mezgebe_sbhat/data/kdase_yohans_afewerk.dart';
import 'package:mezgebe_sbhat/models/menu.dart';

/*
List<Map<String, dynamic>> kdaseMenu = [
  {
    "title": "ግእዝ ሥርዓተ ቅዳሴ መግቢያ",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": GeezKdaseMegbiya(),
  },
  {
    "title": "ዕዝል ሥርዓተ ቅዳሴ መግቢያ",
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
    "playList": EzlKdaseMegbiya(),
  },
  //
  {
    "title": 'ግእዝ ሐዋርያት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘአበዊነ ሐዋርያት",
    "playList": GeezKdaseHawaryat(),
  },
  {
    "title": 'ዕዝል ሐዋርያት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘአበዊነ ሐዋርያት",
    "playList": EzlKdaseHawaryat(),
  },
//
  {
    "title": 'ግእዝ እግዚእነ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘእግዚእነ ወአምላክነ",
    "playList": GeezKdaseEgzi(),
  },
  {
    "title": 'ዕዝል እግዚእነ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘእግዚእነ ወአምላክነ",
    "playList": EzlKdaseEgzi(),
  },
//
  {
    "title": 'ግእዝ እግዝእትነ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘእግዝእትነ",
    "playList": GeezKdaseMaryam(),
  },
  {
    "title": 'ዕዝል እግዝእትነ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘእግዝእትነ",
    "playList": EzlKdaseMaryam(),
  },
  //
  {
    "title": 'ግእዝ ዘዮሐንስ ወልደ ነጎድጓድ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ ወልደ ነጎድጓድ",
    "playList": GeezKdaseWeldeNegodguad(),
  },
  {
    "title": 'ዕዝል ዘዮሐንስ ወልደ ነጎድጓድ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ ወልደ ነጎድጓድ",
    "playList": EzlKdaseWeldeNegodguad(),
  },
  //
  {
    "title": 'ግእዝ ዘሠለስቱ ምእት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘሠለስቱ ምእት",
    "playList": GeezKdaseSelestuMiet(),
  },
  {
    "title": 'ዕዝል ዘሠለስቱ ምእት',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘሠለስቱ ምእት",
    "playList": EzlKdaseSelestuMiet(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ አትናቴዎስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ አትናቴዎስ",
    "playList": GeezKdaseAtnatewos(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ አትናቴዎስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ አትናቴዎስ",
    "playList": EzlKdaseAtnatewos(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ባስልዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ባስልዮስ",
    "playList": GeezKdaseBaslyos(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ባስልዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ባስልዮስ",
    "playList": EzlKdaseBaslyos(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ጎርጎርዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ",
    "playList": GeezKdaseGorgoryos(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ጎርጎርዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ",
    "playList": EzlKdaseGorgoryos(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ኤጲፋንንዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ኤጲፋንንዮስ",
    "playList": GeezKdaseEpifanewos(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ኤጲፋንንዮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ኤጲፋንንዮስ",
    "playList": EzlKdaseEpifanewos(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    "name": 'kdase',
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ አፈ ወርቅ",
    "playList": GeezKdaseYohansAfewerk(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ አፈ ወርቅ",
    "playList": EzlKdaseYohansAfewerk(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ቄርሎስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ቄርሎስ",
    "playList": GeezKdaseKerlos(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ቄርሎስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ቄርሎስ",
    "playList": EzlKdaseKerlos(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ያዕቆብ ዘሥሩግ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ያዕቆብ ዘሥሩግ",
    "playList": GeezKdaseYaekobZeSrug(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ያዕቆብ ዘሥሩግ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ያዕቆብ ዘሥሩግ",
    "playList": EzlKdaseYaekobZeSrug(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ዲዮስቆሮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዲዮስቆሮስ",
    "playList": GeezKdaseDiyoscoros(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ዲዮስቆሮስ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ዲዮስቆሮስ",
    "playList": EzlKdaseDiyoscoros(),
  },
  //
  {
    "title": 'ግእዝ ዘቅዱስ ጎርጎርዮስ ካልዕ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ ካልዕ",
    "playList": GeezKdaseGorgoryosKalie(),
  },
  {
    "title": 'ዕዝል ዘቅዱስ ጎርጎርዮስ ካልዕ',
    "name": "kdase",
    "imageUrl": "assets/images/kdase.jpg",
    "subTitle": "አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ ካልዕ",
    "playList": EzlKdaseGorgoryosKalie(),
  },
];
*/

List<Menu> kdaseMenu = [
  Menu(
    title: 'ግእዝ ሥርዓተ ቅዳሴ መግቢያ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'ሥርዓተ ቅዳሴ ዘደብረ ዓባይ',
    playList: GeezKdaseMegbiya(),
  ),
  Menu(
    title: 'ዕዝል ሥርዓተ ቅዳሴ መግቢያ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'ሥርዓተ ቅዳሴ ዘደብረ ዓባይ',
    playList: EzlKdaseMegbiya(),
  ),
  Menu(
    title: 'ግእዝ ዘሐዋርያት',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘአበዊነ ሐዋርያት',
    playList: GeezKdaseHawaryat(),
  ),
  Menu(
    title: 'ዕዝል ዘሐዋርያት',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘአበዊነ ሐዋርያት',
    playList: EzlKdaseHawaryat(),
  ),
  Menu(
    title: 'ግእዝ ዘእግዚእነ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘእግዚእነ ወአምላክነ',
    playList: GeezKdaseEgzi(),
  ),
  Menu(
    title: 'ዕዝል ዘእግዚእነ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘእግዚእነ ወአምላክነ',
    playList: EzlKdaseEgzi(),
  ),
  Menu(
    title: 'ግእዝ ዘእግዝእትነ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘእግዝእትነ',
    playList: GeezKdaseMaryam(),
  ),
  Menu(
    title: 'ዕዝል ዘእግዝእትነ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘእግዝእትነ',
    playList: EzlKdaseMaryam(),
  ),
  Menu(
    title: 'ግእዝ ዘዮሐንስ ወልደ ነጎድጓድ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ ወልደ ነጎድጓድ',
    playList: GeezKdaseWeldeNegodguad(),
  ),
  Menu(
    title: 'ዕዝል ዘዮሐንስ ወልደ ነጎድጓድ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ ወልደ ነጎድጓድ',
    playList: EzlKdaseWeldeNegodguad(),
  ),
  Menu(
    title: 'ግእዝ ዘሠለስቱ ምእት',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘሠለስቱ ምእት',
    playList: GeezKdaseSelestuMiet(),
  ),
  Menu(
    title: 'ዕዝል ዘሠለስቱ ምእት',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘሠለስቱ ምእት',
    playList: EzlKdaseSelestuMiet(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ አትናቴዎስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ አትናቴዎስ',
    playList: GeezKdaseAtnatewos(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ አትናቴዎስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ አትናቴዎስ',
    playList: EzlKdaseAtnatewos(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ባስልዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ባስልዮስ',
    playList: GeezKdaseBaslyos(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ባስልዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ባስልዮስ',
    playList: EzlKdaseBaslyos(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ጎርጎርዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ',
    playList: GeezKdaseGorgoryos(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ጎርጎርዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ',
    playList: EzlKdaseGorgoryos(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ኤጲፋንንዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ኤጲፋንንዮስ',
    playList: GeezKdaseEpifanewos(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ኤጲፋንንዮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ኤጲፋንንዮስ',
    playList: EzlKdaseEpifanewos(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    playList: GeezKdaseYohansAfewerk(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዮሐንስ አፈ ወርቅ',
    playList: EzlKdaseYohansAfewerk(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ቄርሎስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ቄርሎስ',
    playList: GeezKdaseKerlos(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ቄርሎስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ቄርሎስ',
    playList: EzlKdaseKerlos(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ያዕቆብ ዘሥሩግ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ያዕቆብ ዘሥሩግ',
    playList: GeezKdaseYaekobZeSrug(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ያዕቆብ ዘሥሩግ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ያዕቆብ ዘሥሩግ',
    playList: EzlKdaseYaekobZeSrug(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ዲዮስቆሮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዲዮስቆሮስ',
    playList: GeezKdaseDiyoscoros(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ዲዮስቆሮስ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ዲዮስቆሮስ',
    playList: EzlKdaseDiyoscoros(),
  ),
  Menu(
    title: 'ግእዝ ዘቅዱስ ጎርጎርዮስ ካልዕ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ ካልዕ',
    playList: GeezKdaseGorgoryosKalie(),
  ),
  Menu(
    title: 'ዕዝል ዘቅዱስ ጎርጎርዮስ ካልዕ',
    name: 'kdase',
    imageUrl: 'assets/images/kdase.jpg',
    subTitle: 'አኮቴተ ቁርባን ዘቅዱስ ጎርጎርዮስ ካልዕ',
    playList: EzlKdaseGorgoryosKalie(),
  )
];
