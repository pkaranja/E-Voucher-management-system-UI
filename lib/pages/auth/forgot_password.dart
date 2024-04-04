import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:zawadi/controllers/flutter_toast.dart';
import 'package:zawadi/global/input_validators.dart';
import 'package:zawadi/global/widgets/text_input_widget.dart';

import 'package:zawadi/widgets/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zawadi/widgets/text_field.dart';
import 'package:flutter/services.dart';

import '../../global/styles/app_colors.dart';
import 'check_mail_screen.dart';
import 'login_screen.dart';

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
          ToastMessage().toastMessage('Password reset email sent!', Colors.green);
          setState(() {
            loading = false;
          });
    }).onError((error, stackTrace) {
      ToastMessage().toastMessage(error.toString(), Colors.red);
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: constraints.maxHeight * 0.63,
                        color: Theme.of(context).primaryColor,
                        child: const Center(
                          child: Text(
                            'Zawadi',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
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
                                  remoteConfig.getString('forgotPasswordTitle'),
                                  style: const TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                Text(
                                    remoteConfig.getString('forgotPasswordTxt'),
                                    style: const TextStyle( color: whiteColor)
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                ),
                                DynamicInputWidget(
                                  controller: emailController,
                                  obscureText: false,
                                  focusNode: emailFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.emailValidator,
                                  prefIcon: const Icon(Icons.alternate_email, size: 18),
                                  hint: "Enter Email Address",
                                  textInputAction: TextInputAction.done,
                                  isNonPasswordField: true,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.04,
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