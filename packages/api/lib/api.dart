library api;

import 'package:flutter_dotenv/flutter_dotenv.dart';

// export 'src/models/models.dart';
export 'src/encrypted_key_api_client.dart';
export 'src/folder_api_client.dart';

String getEnv(String key) {
  return dotenv.env[key] ?? '';
}

void main() {
  // dotenv.load(fileName: "../../.env");
}