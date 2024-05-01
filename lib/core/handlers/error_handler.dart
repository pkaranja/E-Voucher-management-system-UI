import 'package:firebase_crashlytics/firebase_crashlytics.dart';

Future<void> handleError(dynamic error, String reason, {StackTrace? stackTrace}) async {
  // Explicitly cast the error object to Error type to access its stack trace
  if (error is Error) {
    await FirebaseCrashlytics.instance.recordError(
      error.toString(),
      stackTrace ?? error.stackTrace, // Use error.stackTrace if stackTrace is null
      reason: reason,
    );
  } else {
    // If error is not of type Error, handle it accordingly
    String stackTraceString = stackTrace?.toString() ?? '';

    await FirebaseCrashlytics.instance.recordError(
      error.toString(),
      stackTraceString.isNotEmpty ? StackTrace.fromString(stackTraceString) : null,
      reason: reason,
    );
  }
}
