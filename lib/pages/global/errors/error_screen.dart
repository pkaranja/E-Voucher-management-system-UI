import 'package:flutter/material.dart';
import 'package:zawadi/global/handlers/error_types.dart';

class ErrorScreen extends StatelessWidget {
  final ErrorType errorType;

  const ErrorScreen(this.errorType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            errorType.errorImage,
            fit: BoxFit.cover,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {
                // Add your retry logic here
              },
              child: Text(
                "Retry".toUpperCase(),
                style: const TextStyle(color: Colors.black), // Text color for the button
              ),
            ),
          ),

        ],
      ),
    );
  }
}