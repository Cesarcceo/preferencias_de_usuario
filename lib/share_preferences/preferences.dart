import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static late SharedPreferences _prefs;

  static String _name='';
  static bool _isDarkmode=false;
  static int _gener=1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
    
  }

  static String get name{
    return _prefs.getString('name')??_name;
  }

  static set name (String name ){
    _name=name;
    _prefs.setString('name', name);
  }
  static bool get isDarkmode{
    return _prefs.getBool('isDarckmode')??_isDarkmode;
  }

  static set isDarkmode (bool isDarkmode ){
    _isDarkmode=isDarkmode;
    _prefs.setBool('isDarckmode', isDarkmode);
  }
  static int get gener{
    return _prefs.getInt('gener')??_gener;
  }

  static set gener (int  gener ){
    _gener=gener;
    _prefs.setInt('gener', gener);
  }
}