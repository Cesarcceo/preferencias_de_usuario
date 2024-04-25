
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData currentTheme;
  ThemeProvider({
    required bool isDarkmode
  }): currentTheme = isDarkmode?ThemeData.dark():ThemeData.light();

  ssetLightMode(){
    currentTheme=ThemeData.light();
    notifyListeners();
  }
  
  ssetDarkMode(){
    currentTheme=ThemeData.dark();
    notifyListeners();
  }
}