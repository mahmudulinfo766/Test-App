import 'package:test_app/core/app/app_flavor.dart';

class ApiUrls {
  static String baseUrl = getServerUrl();
  static const String liveUrl = ''; //live server
  static const String devUrl = ''; // dev server
  static const String testUrl = ''; // test server

  static String getServerUrl() {
    if (AppFlavor.getFlavor == FlavorStatus.production) {
      return liveUrl;
    } else if (AppFlavor.getFlavor == FlavorStatus.development) {
      return devUrl;
    } else if (AppFlavor.getFlavor == FlavorStatus.staging) {
      return testUrl;
    } else {
      return liveUrl;
    }
  }

  // shop module
  static const String login = '/v1/token';

  static String homeUrl(id) {
    return '.../$id';
  }
}
