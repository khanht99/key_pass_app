import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:api/api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: "../.env");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _apiResult = 'Loading...';

  @override
  void initState() {
    super.initState();
    _fetchEncryptedKey();
  }

  Future<void> _fetchEncryptedKey() async {
    try {
      final client = EncryptedKeyApiClient();
      final key = await client.fetchEncryptedKey(
        '02abbcc3-a872-4134-97ce-cc9bde43ef56',
      ); // Replace with a real userId
      setState(() {
        _apiResult = key.secretKey; // Or any field you want to display
      });
      client.close();
    } catch (e) {
      setState(() {
        _apiResult = 'Error fetching encrypted key: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("KeyPass"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('API Result: $_apiResult'),
              const SizedBox(height: 24),
              const Text('You have pushed the button this many times:'),
            ],
          ),
        ),
      ),
    );
  }
}
