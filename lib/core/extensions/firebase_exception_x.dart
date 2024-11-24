import 'package:firebase_core/firebase_core.dart';

extension FirebaseExceptionX on FirebaseException {
  bool get isInternetConnectionError {
    if (message == null) return false;

    return message!.contains(
          'The Internet connection appears to be offline.',
        ) ||
        message!.contains('The request timed out.');
  }
}
