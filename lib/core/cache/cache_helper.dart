import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? _preferences;

  // Initialize the SharedPreferences instance
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Save a boolean value in SharedPreferences
  static Future<bool> saveBool(
      {required String key, required bool value}) async {
    return await _preferences?.setBool(key, value) ?? false;
  }

  // Get a boolean value from SharedPreferences
  static bool? getBool({required String key}) {
    return _preferences?.getBool(key);
  }

  // Save a string (language code) in SharedPreferences
  static Future<bool> saveString(
      {required String key, required String value}) async {
    return await _preferences?.setString(key, value) ?? false;
  }

  // Get a string (language code) from SharedPreferences
  static String? getString({required String key}) {
    return _preferences?.getString(key);
  }

  // Save the current selected language
  static Future<void> saveLanguage(String languageCode) async {
    await saveString(key: 'language', value: languageCode);
  }

  // Get the saved language code, defaulting to 'en' if not set
  static String getSavedLanguage() {
    return getString(key: 'language') ??
        'en'; // Default to 'en' if no language is saved
  }
}
