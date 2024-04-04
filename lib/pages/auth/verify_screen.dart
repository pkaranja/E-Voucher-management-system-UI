import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zawadi/pages/settings/update_profile.dart';

import '../../controllers/flutter_toast.dart';
import '../../controllers/profile_controller.dart';
import '../../models/user_model.dart';
import '../../widgets/check_email_widget.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});
  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  Timer? timer;

  final user = FirebaseAuth.instance.currentUser!;
  DatabaseReference ref = FirebaseDatabase.instance.ref().child('Users');

  @override
  void initState() {
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if (isEmailVerified == false) {
      sendVerificationEmail();

      timer = Timer.periodic(
          const Duration(seconds: 1), (_) => checkEmailVerified());
    }
  }

  Future sendVerificationEmail() async {
    final user = FirebaseAuth.instance.currentUser!;
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

      int age = calculateAge() as int;

      DatabaseReference splitRef = ref.child(user.uid.toString()).child('kyc');
      splitRef.set({
        'age': age,
        'location': "",
        'address': "",
        'gender': "",
        'nationality': "",
        'govt_id': "",
        'govt_id_expiry_date': "",
        'govt_type': "",
        'region': "",
        'privacy_policy_consent': true,
        'terms_and_condition_consent': true,
        'isAutopayOn': false,
        'phone_number_validated': false,
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<int> calculateAge() async {
    UserModel userData = ProfileController().getUserData() as UserModel;

    if (userData.dob != null) {
      if (userData.dob != null) {
        // Parse the date of birth string into a DateTime object
        DateTime dob = DateFormat('yyyy-MM-dd').parse(userData.dob);
        // Calculate the age
        DateTime now = DateTime.now();
        int age = now.year - dob.year;
        if (now.month < dob.month || (now.month == dob.month && now.day < dob.day)) {
          age--; // Adjust age if birthday hasn't occurred yet this year
        }

        return age;
      } else {
        print('Date of birth not found.');
      }
    } else {
      print('User data incomplete.');
    }
    return 0;
  }


  @override
  Widget build(BuildContext context) => isEmailVerified
      ? const UpdateAccountScreen()
      : WillPopScope(
    onWillPop: () async => false,
    child: Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'A verification link has been\nsent to your email!',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).cardColor),
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