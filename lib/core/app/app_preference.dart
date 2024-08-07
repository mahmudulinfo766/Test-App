import 'dart:convert';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_dependency.dart';

const String prefsKeyLang = "prefsKeyLang";
const String prefsKeyIsUserLoggedIn = "prefsKeyIsUserLoggedIn";
const String prefsKeyUserLanguage = "prefsKeyUserLanguage";
const String prefsKeyUserLanguageName = "prefsKeyUserLanguageName";
const String prefsKeyUserCountryAbbreviation =
    "prefsKeyUserCountryAbbreviation";
const String prefsKeyAppDarkTheme = "prefsKeyAppDarkTheme";
const String prefsKeyUserInfo = "prefsKeyUserInfo";
const String prefsKeyUserModuleType = "prefsKeyUserModuleType";
const String prefsKeyUserToken = "prefsKeyUserToken";
const String prefsKeyDeviceToken = "prefsKeyDeviceToken";
const String prefsKeyRefrigeratorToast = "prefsKeyRefrigeratorToast";
const String prefsKeyOrderHistoryToast = "prefsKeyOrderHistoryToast";
const String prefsKeyOrderSummaryTooltip = "prefsKeyOrderSummaryTooltip";
const String prefsKeyUserId = "prefsKeyUserId";
const String prefsKeyWishList = "prefsKeyWishList";
const String prefsKeyCompareList = "prefsKeyCompareList";
const String prefsKeyLanguageSet = "prefsKeyLanguageSet";

@injectable
class AppPreferences {
  final _sharedPreferences = instance<SharedPreferences>();

  /// set preferences data start here ///

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(prefsKeyIsUserLoggedIn, true);
  }

  Future<void> setIsLanguageSet() async {
    _sharedPreferences.setBool(prefsKeyLanguageSet, true);
  }

  Future<void> setUserId(String userId) async {
    _sharedPreferences.setString(prefsKeyUserId, userId);
  }


  Future<void> setUserAuthToken(String? token) async {
    _sharedPreferences.setString(prefsKeyUserToken, token ?? '');
  }


  Future<void> setLanguage(String? language) async {
    _sharedPreferences.setString(prefsKeyUserLanguage, language ?? 'de');
  }

  Future<void> setLanguageName(String? languageName) async {
    _sharedPreferences.setString(
        prefsKeyUserLanguageName, languageName ?? 'German');
  }

  Future<void> setIsAppDarkTheme(bool isDark) async {
    _sharedPreferences.setBool(prefsKeyAppDarkTheme, isDark);
  }

  void setIsRefrigeratorToastSeen(bool seen) {
    _sharedPreferences.setBool(prefsKeyRefrigeratorToast, seen);
  }

  void setIsOrderHistoryToastSeen(bool seen) {
    _sharedPreferences.setBool(prefsKeyOrderHistoryToast, seen);
  }

  void setIsOrderSummaryTooltipSeen(bool seen) {
    _sharedPreferences.setBool(prefsKeyOrderSummaryTooltip, seen);
  }

  Future<void> removeUserData() async {
    _sharedPreferences.remove(prefsKeyUserInfo);
    _sharedPreferences.remove(prefsKeyUserToken);
    _sharedPreferences.remove(prefsKeyIsUserLoggedIn);
    _sharedPreferences.remove(prefsKeyWishList);
    _sharedPreferences.remove(prefsKeyCompareList);
  }

  /// set preferences data end here ///

  /// get preferences data start here ///


  Future<String> getUserAuthToken() async {
    return _sharedPreferences.getString(prefsKeyUserToken) ?? "";
  }

  Future<String> getUserId() async {
    return _sharedPreferences.getString(prefsKeyUserId) ?? "";
  }


  String getLanguage() {
    return _sharedPreferences.getString(prefsKeyUserLanguage) ?? 'de';
  }

  bool getIsAppDarkTheme() {
    return _sharedPreferences.getBool(prefsKeyAppDarkTheme) ?? false;
  }

  bool getIsRefrigeratorToastSeen() {
    return _sharedPreferences.getBool(prefsKeyRefrigeratorToast) ?? false;
  }

  bool getIsOrderHistoryToastSeen() {
    return _sharedPreferences.getBool(prefsKeyOrderHistoryToast) ?? false;
  }

  bool getIsOrderSummaryTooltipSeen() {
    return _sharedPreferences.getBool(prefsKeyOrderSummaryTooltip) ?? false;
  }

  bool isUserLoggedIn() {
    return _sharedPreferences.getBool(prefsKeyIsUserLoggedIn) ?? false;
  }

  bool isLanguageSet() {
    return _sharedPreferences.getBool(prefsKeyLanguageSet) ?? false;
  }

  Future<void> logout() async {
    await removeUserData();
    _sharedPreferences.remove(prefsKeyIsUserLoggedIn);
  }
}
