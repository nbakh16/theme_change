import 'package:flutter/material.dart';

class ThemeStyles{
  static ThemeData themeData(BuildContext context, bool isDark){
    return ThemeData(
      scaffoldBackgroundColor: isDark ? Colors.black45 : Colors.white,
      // primaryColor: Colors.amber,
      colorScheme: ThemeData().colorScheme.copyWith(
        secondary: isDark ? Colors.black45 : Colors.white,
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      cardColor: isDark ? Colors.black45 : Colors.grey,
      canvasColor: isDark ? Colors.black : Colors.grey,

      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDark ? const ColorScheme.dark() : const ColorScheme.light()
      )
    );
  }
}