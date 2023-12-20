import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesPlugin {
  static Future<SharedPreferences> _getPrefs() async =>
      SharedPreferences.getInstance();

  static Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    final prefs = await _getPrefs();
    await prefs.setBool(key, value);
  }

  static Future<bool?> getBool({
    required String key,
  }) async {
    final prefs = await _getPrefs();
    return prefs.getBool(key);
  }
}
