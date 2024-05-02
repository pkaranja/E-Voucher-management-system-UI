import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../styles/app_colors.dart';

class AwaitScreen extends StatelessWidget {
  const AwaitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: Container(
              height: 500,
              width: 135,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitSpinningLines(
                    color: Theme.of(context).hintColor,
                    size: 100,
                  ),
                  const SizedBox(height: 30,),
                  Text("Loading",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: themePrimaryColor,
                        fontFamily: 'Blueberry'
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}