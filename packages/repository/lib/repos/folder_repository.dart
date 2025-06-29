import 'package:api/api.dart';
import 'package:repository/models/folder.dart';

class FolderRepository {

  FolderRepository(FolderApiClient? folderApiClient) : _folderApiClient = folderApiClient ?? FolderApiClient();

  final FolderApiClient _folderApiClient;

  Future<List<Folder>> fetchFolders(String userId) async {
    final folder = await _folderApiClient.fetchFolders(userId);
    return folder as List<Folder>;
  }
}