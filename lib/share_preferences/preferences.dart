import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static late SharedPreferences _prefs;

  static String _name='';
  static bool _darkmode=false;
  static int _gener=1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
    
  }
}