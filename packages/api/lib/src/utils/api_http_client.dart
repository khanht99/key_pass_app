import 'package:http/http.dart' as http;

class ApiHttpClient extends http.BaseClient {
  ApiHttpClient({String? token}) : _token = token ?? "eyJhbGciOiJIUzM4NCJ9.eyJuYW1lIjoiUXVvYyBLaGFuaCBUcnVvbmciLCJyZWdpc3RyYXRpb25faWQiOiJnb29nbGUiLCJpZCI6IjEwNDEzMTI4NzQ2NTg1OTUwODQzMCIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLcVlwRW9kQ3Vhcl96T00wSWV4dTBFRE5LU3pfMDZ0WVNwbGduQ29QMkdvZmd4YmFWQz1zOTYtYyIsImVtYWlsIjoia2hhbmh0OTlAZ21haWwuY29tIiwic3ViIjoia2hhbmh0OTlAZ21haWwuY29tIiwiaWF0IjoxNzUxMDM3OTIyLCJleHAiOjE3NTEwNTU5MjJ9.aLPB2fKFqv81HqGRUR24amRb518eq9494MxhrKh4hBaGPL7wusEQMR7fsiJfUCg9";

  final String? _token;
  final http.Client _inner = http.Client();

  Map<String, String> get _defaultHeaders => {
    if(_token != null) 'Authorization': "Bearer $_token",
    'Content-Type': 'application/json',
  };

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    print("ApiHttpClient: send: ${request.url}");
    request.headers.addAll(_defaultHeaders);
    return _inner.send(request);
  }

  void close() {
    _inner.close();
  }
  
}