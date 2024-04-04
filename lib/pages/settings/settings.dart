import 'package:flutter/material.dart';
import 'package:zawadi/config/custom_colors.dart';
import 'package:zawadi/global/widgets/custom_text_field.dart';
import 'package:zawadi/config/app_data.dart' as app_data;

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Teko',
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      ),
    );
  }

}
