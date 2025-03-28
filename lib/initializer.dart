import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Initializer {
  static Future<void> init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();

      await _initEnvironment();
    } catch (err) {
      if (kDebugMode) {
        print('Initialization error: $err');
      }
      rethrow;
    }
  }

  static Future<void> _initEnvironment() async {
    try {
      await dotenv.load(fileName: '.env');
    } catch (err) {
      throw Exception('Environment initialization failed: $err');
    }
  }
}
