import 'dart:convert';

import 'package:api/api.dart';
import 'package:api/src/models/models.dart';
import 'package:api/src/utils/api_http_client.dart';

class EncryptedKeyRequestFailure implements Exception {}

class EncryptedKeyNotFoundFailure implements Exception {}

class EncryptedKeyApiClient {
  EncryptedKeyApiClient({ApiHttpClient? httpClient})
    : _httpClient = httpClient ?? ApiHttpClient();

  final ApiHttpClient _httpClient;

  Future<EncryptedKey> fetchEncryptedKey(String userId) async {
    try {
      final encryptedKeyRequest = Uri.http(
        // getEnv("BASE_API_URL"),
        "192.168.1.6:8080",
        '/api/v1/encrypted_keys/$userId',
      );

      print("EncryptedKeyApiClient: fetchEncryptedKey: $encryptedKeyRequest");
      final encryptedKeyResponse = await _httpClient.get(encryptedKeyRequest);
      print(
        "EncryptedKeyApiClient: fetchEncryptedKey: response: ${encryptedKeyResponse}",
      );
      if (encryptedKeyResponse.statusCode != 200) {
        throw EncryptedKeyRequestFailure();
      }
      print(encryptedKeyResponse.body);
      final encryptedKeyJson = jsonDecode(encryptedKeyResponse.body) as Map;
      print("EncryptedKeyApiClient: encryptedKeyJson: $encryptedKeyJson");
      if (!encryptedKeyJson.containsKey("data"))
        throw EncryptedKeyNotFoundFailure();

      final result = encryptedKeyJson["data"] as Map<String, dynamic>;
      print("EncryptedKeyApiClient: fetchEncryptedKey: $result");
      return EncryptedKey.fromJson(result);
    } catch (e) {
      print("EncryptedKeyApiClient: fetchEncryptedKey: error: $e");
      throw EncryptedKeyRequestFailure();
    }
  }

  void close() {
    _httpClient.close();
  }
}
