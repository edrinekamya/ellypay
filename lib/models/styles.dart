import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const brandColor = Color(0xFF750F27);
  static const greyText = TextStyle(
    color: Colors.grey,
    fontSize: 14,
  );

  static const whiteText = TextStyle(
      color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 14);

  static final boldText = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static final primaryText = boldText.copyWith(
    color: brandColor,
  );
  static final smallBoldText = boldText.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  static final greenText = smallBoldText.copyWith(
    color: Colors.green,
  );
  static final redText = smallBoldText.copyWith(
    color: Colors.red,
  );
  static const buttonText = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static const gapY = SizedBox(
    height: 8,
  );
  static const paddingLarge = EdgeInsets.all(
    16.0,
  );
  static const padding = EdgeInsets.all(
    8.0,
  );
  static const buttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      brandColor,
    ),
  );
  static const tabBarButton = ButtonStyle(
      elevation: MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(Colors.white));
  static final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  );
  static final noShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0),
  );
}
