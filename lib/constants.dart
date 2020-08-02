import 'package:flutter/material.dart';

const kprimaryColor1 = Color(0xFF8743FF);
const kprimaryColor2 = Color(0xFF4136F1);
const klighttheameColor = Color(0xFFEAF2FF);
const klightbackgroundColor = Color(0xFFFFFFFF);
const kdarktheameColor = Color(0xFF171717);
const kdarkbackgroundColor = Color(0xFF0D0D0D);
const kbuttonShadow = Color(0xFF1466CC);
final kLighttextfieldBackground = const Color(0XFF000000).withOpacity(0.03);
final kDarktextfieldBackground = const Color(0XFFFFFFFF).withOpacity(0.03);
const LinearGradient blueGradiantLtoR = LinearGradient(
  colors: [
    kprimaryColor2,
    kprimaryColor1,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const LinearGradient blueGradiantTtoB = LinearGradient(
  colors: [
    kprimaryColor1,
    kprimaryColor2,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const kButtonTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  fontFamily: "Poppins",
  color: Colors.white,
);

const kLightHintTextStyle = TextStyle(
  color: Colors.black38,
  fontFamily: "Poppins",
  fontSize: 12
);
const kDarkHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: "Poppins",
  fontSize: 12
);
const kLightTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: "Poppins",
  fontSize: 12
);
const kDarkTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 12
);

const kLightHeadingText = TextStyle(
  color: Colors.black,
  fontFamily: "Poppins",
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
const kDarkHeadingText = TextStyle(
  color: Colors.white,
  fontFamily: "Poppins",
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
