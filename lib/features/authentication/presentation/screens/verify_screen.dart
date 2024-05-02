import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zawadi/pages/settings/update_profile.dart';

import '../../../../core/styles/app_colors.dart';
import '../widgets/check_email_widget.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});
  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  Timer? timer;

  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();

    isEmailVerified = user.emailVerified;
    if (isEmailVerified == false) {
      sendVerificationEmail();
      timer = Timer.periodic(
          const Duration(seconds: 1), (_) => checkEmailVerified()
      );
    }
  }

  Future sendVerificationEmail() async {
    await user.sendEmailVerification().then((value) {
      showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.info( message: 'Verification email sent' )
      );
    }).onError((error, stackTrace) {
      showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error( message: error.toString() )
      );
    });
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified == true) {
      timer?.cancel();
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? const UpdateAccountScreen()
      : WillPopScope(
    onWillPop: () async => false,
    child: Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'A verification link has been\nsent to your email!',
              style: TextStyle(
                  fontSize: 20,
                  color: themeAlmostBlackColor
              ),
              textAlign: TextAlign.center,
            ),
            CheckEmailWidget(
                mailText:
                'You will get automatically logged\nin once you verify your email',
                btnText: 'Resend Email',
                onPressed: sendVerificationEmail),
          ],
        ),
      ),
    ),
  );
}