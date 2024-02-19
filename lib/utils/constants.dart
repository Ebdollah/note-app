import "package:shared_preferences/shared_preferences.dart";


class Constants {
  //  SharedPreferences prefs() {
  //   return prefs();
  // }
   Future<SharedPreferences> getPrefs() async {
       SharedPreferences _prefs;

      _prefs = await SharedPreferences.getInstance();
    
    return _prefs;
  }
  // static SharedPreferences prefs;
}

