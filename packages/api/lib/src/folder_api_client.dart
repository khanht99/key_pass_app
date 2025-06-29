import 'dart:convert';

import 'package:api/src/models/folder.dart';
import 'package:api/src/utils/api_http_client.dart';

class FolderRequestFailure implements Exception {}

class FolderNotFound implements Exception {}

class FolderApiClient {
  FolderApiClient({ApiHttpClient? httpClient}) : _httpClient = httpClient ?? ApiHttpClient();

  final ApiHttpClient _httpClient;

  Future<List<Folder>> fetchFolders(String userId) async {
    final request = Uri.http("", "/api/v1/folders/$userId");

    final response = await _httpClient.get(request);

    if(response.statusCode != 200) {
      throw FolderRequestFailure;
    }

    final foldersJson = jsonDecode(response.body) as Map<String, Folder>;

    if(!foldersJson.containsKey("data")) {
      throw FolderNotFound();
    }

    final folderData = foldersJson["data"] as Map<String, Folder>;

    return Folder.fromJson(folderData) as List<Folder>;
  }
}