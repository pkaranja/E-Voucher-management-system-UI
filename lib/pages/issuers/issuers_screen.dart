import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../global/widgets/app_bar.dart';
import '../../global/widgets/payment_form.dart';

class IssuersScreen extends StatefulWidget {
  const IssuersScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<IssuersScreen> createState() => _IssuersScreenState();
}

class _IssuersScreenState extends State<IssuersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(
        title1: 'Zawadi',
        title2: ' Digital',
        hasBackButton: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.title ?? 'Issuers',
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ],

      ),
    );
  }
}
