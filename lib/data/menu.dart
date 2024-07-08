class Menu {
  static const List<Map<String, dynamic>> items = [
    {
      "title": "ሥርዓተ ቅዳሴ (ግእዝ)",
      "name": "kdase",
      "imageUrl": "assets/images/kdase.jpg",
      "subTitle": "ሥርዓተ ቅዳሴ ዘደብረ ዓባይ",
      "hasDay": false,
    },
    {
      "title": "ሰዓታት",
      "name": "seatat",
      "imageUrl": "assets/images/seatat.jpeg",
      "subTitle": "ሰዓታት ዘበኣታ በየኔታ መጋቤ ኅሩያን የማነ ብርሃን ጌታሁን",
      "hasDay": false,
    },
    {
      "title": "ውዳሴ ማርያም",
      "name": "wdase-maryam",
      "imageUrl": "assets/images/wdaseMaryam.jpeg",
      "subTitle": "ዜማ ውዳሴ ማርያም በሊቀ ጠበብት ተክሌ ዘውዱ",
      "hasDay": true,
      "content": days,
    },
    {
      "title": "መስተጋብእ",
      "name": "mestegabe",
      "imageUrl": "assets/images/mestegabe.jpeg",
      "subTitle": "መስተጋብእ ዜማ በሊቀ ጠበብት ተክሌ ዘውዱ",
      "hasDay": true,
      "content": days,
    },
    {
      "title": "አርባእት",
      "name": "arbaet",
      "imageUrl": "assets/images/arbaet.jpg",
      "subTitle": "አርባእት ዜማ በሊቀ ጠበብት ተክሌ ዘውዱ",
      "hasDay": true,
      "content": days,
    },
    {
      "title": "አርያም",
      "name": "aryam",
      "imageUrl": "assets/images/aryam.jpg",
      "subTitle": "አርያም ዜማ በሊቀ ጠበብት ተክሌ ዘውዱ",
      "hasDay": true,
      "content": days,
    },
    {
      "title": "ሠለስት",
      "name": "selest",
      "imageUrl": "assets/images/selest.jpg",
      "subTitle": "ሠለስት ዜማ በሊቀ ጠበብት ተክሌ ዘውዱ",
      "hasDay": true,
      "content": days,
    },
  ];
}

const days = [
  {"label": "ሰኑይ", "value": "senuy"},
  {"label": "ሠሉስ", "value": "selus"},
  {"label": "ረቡዕ", "value": "rebue"},
  {"label": "ሐሙስ", "value": "hamus"},
  {"label": "ዓርብ", "value": "arb"},
  {"label": "ቀዳሚት-ሰንበት", "value": "kedamit"},
  {"label": "ሰንበተ-ክርስትያን", "value": "senbete-chrstian"},
];
