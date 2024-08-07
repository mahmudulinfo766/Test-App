import 'dart:convert';
import '../../core/constants/strings.dart';

class ClientHeader {
  static String applicationJson = "application/json";
  static String contentType = "Content-Type";
  static String accept = "Accept";
  static String authorization = "Authorization";
  static String xApiKey = "X-API-KEY";

  static Map<String, dynamic> headers(token) {
    Map<String, dynamic> header = <String, dynamic>{};
    header[contentType] = applicationJson;
    header[accept] = applicationJson;
    header[authorization] = "Bearer $token";
    return header;
  }

  static Map<String, dynamic> defaultHeader() {
    Map<String, dynamic> header = <String, dynamic>{};
    header[contentType] = applicationJson;
    header[accept] = applicationJson;
    return header;
  }

  static Map<String, dynamic> otherHeader() {
    Map<String, dynamic> header = <String, dynamic>{};
    header[contentType] = applicationJson;
    header[accept] = applicationJson;
    header[xApiKey] = 'FRM968XmpaSqHVjZSEQBzyGan2hZ4Q';
    return header;
  }
}
