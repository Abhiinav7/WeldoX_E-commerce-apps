import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {

  static const TextStyle introstyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.primarycolor,
      shadows: [
        Shadow(
            color: Colors.black54,
            blurRadius: 12,
            offset: Offset(2, 2))
      ]);


  static TextStyle introbutton = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 25,
    color: Colors.black.withOpacity(0.7),
  );

  static TextStyle loginbutton = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: Colors.pink.withOpacity(0.8)
  );

  static TextStyle gesturdetector = TextStyle(
      fontSize: 15,
      fontWeight:FontWeight.w900,
    color: Colors.pink.shade700
  );

  static TextStyle listtile = TextStyle(
      fontSize: 18,
      fontWeight:FontWeight.w600,
      color: Colors.black
  );


}