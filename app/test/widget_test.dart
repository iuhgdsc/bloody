import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() async {
    // Initialize Firebase for tests
    await Firebase.initializeApp();
  });
}
