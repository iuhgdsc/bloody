import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  setUpAll(() async {
    // Initialize Flutter binding for tests
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize Firebase for tests
    try {
      await Firebase.initializeApp();
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing Firebase: $e');
      }
    }
  });

  test('My test', () {
    // Your test code here
  });
}
