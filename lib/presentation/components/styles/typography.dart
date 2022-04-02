import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  final BuildContext context;

  AppTypography(this.context);

  TextStyle get heading1 {
    return GoogleFonts.workSans(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

  // create other headings, body, caption, subtitle textstyle here...
}
