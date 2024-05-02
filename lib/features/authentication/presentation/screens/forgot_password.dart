import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zawadi/core/helpers/input_validators.dart';
import 'package:zawadi/core/presentation/widgets/loading_button_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/logo_widget.dart';
import '../../../../core/presentation/widgets/text_input_widget.dart';
import '../../../../core/styles/app_colors.dart';
import 'check_mail_screen.dart';


class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;

  bool loading = false;
  final _auth = FirebaseAuth.instance;
  final InputValidators authValidator = InputValidators();

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();

    emailFocusNode.dispose();
  }

  void forgotPassword() {
    setState(() {
      loading = true;
    });
    _auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const CheckMailScreen()));
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.success(
              message: 'Password reset email sent!',
            ),
          );
          setState(() {
            loading = false;
          });
    }).onError((error, stackTrace) {
      CustomSnackBar.error(
        message: error.toString(),
      );
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.65,
                        child: const Center(
                           child: LogoWidget(size: 140),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: constraints.maxHeight * 0.015),
                                Text(
                                  'Recover password',
                                  style: TextStyle(
                                    fontSize: 28.sp,
                                    color: themeAlmostBlackColor,
                                    fontFamily: 'QrooFont',
                                    fontWeight: FontWeight.normal
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                Text(
                                    'Enter the email associated with your account and we will send you link to reset the password',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: themeAlmostBlackColor,
                                      fontFamily: 'QrooFont',
                                      fontWeight: FontWeight.normal
                                    ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),

                                DynamicInputWidget(
                                  controller: emailController,
                                  obscureText: false,
                                  focusNode: emailFocusNode,
                                  suffixClickAction: null,
                                  validator: authValidator.emailValidator,
                                  prefIcon: const Icon(Icons.alternate_email, size: 18),
                                  hint: "Enter email address",
                                  textInputAction: TextInputAction.done,
                                  isNonPasswordField: true,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),

                                // Container(child: TextB,)
                                TButton(
                                    loading: loading,
                                    constraints: constraints,
                                    btnColor: Theme.of(context).primaryColor,
                                    btnText: 'Reset Password',
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        forgotPassword();
                                      }
                                    }),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}