import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zawadi/global/input_validators.dart';
import 'package:zawadi/pages/auth/verify_screen.dart';
import 'package:zawadi/global/widgets/text_input_widget.dart';

import '../../controllers/flutter_toast.dart';
import '../../global/styles/app_colors.dart';
import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = FirebaseAuth.instance;
  bool loading = false;
  bool obscureText = true;

  final _formKey = GlobalKey<FormState>();
  final InputValidators authValidator = InputValidators();

  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  DatabaseReference ref = FirebaseDatabase.instance.ref().child('Users');

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneNumberController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    phoneNumberFocusNode.dispose();

  }

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Future signup() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });

      await _auth.createUserWithEmailAndPassword(
          email: emailController.text.toString(),
          password: confirmPasswordController.text.toString())
          .then((value) {
            ref.child(value.user!.uid.toString()).set({
              'uid': value.user!.uid.toString(),
              'email': value.user!.email.toString(),
              'firstName': '',
              'lastName': '',
              'phoneNumber': phoneNumberController.text.toString(),
              'dob': '',
              'profilePic': '',
            });

          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const VerifyEmailScreen()));
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
                        height: constraints.maxHeight * 0.45,
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
                              vertical: 8, horizontal: 30),

                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                          ),
                          // color: Colors.white,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: constraints.maxHeight * 0.015),
                                const Text(
                                  'Create Account',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                DynamicInputWidget(
                                  controller: emailController,
                                  obscureText: false,
                                  focusNode: emailFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.emailValidator,
                                  prefIcon: const Icon(Icons.alternate_email, size: 18),
                                  hint: "Enter valid email address",
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                DynamicInputWidget(
                                  controller: phoneNumberController,
                                  obscureText: false,
                                  focusNode: phoneNumberFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.phone, size: 18),
                                  hint: "Enter valid phone number",
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                DynamicInputWidget(
                                  controller: passwordController,
                                  hint: "Create secure password",
                                  obscureText: obscureText,
                                  focusNode: passwordFocusNode,
                                  toggleObscureText: toggleObscureText,
                                  validator: authValidator.passwordValidator,
                                  prefIcon: const Icon(Icons.lock, size: 18),
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: false,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                DynamicInputWidget(
                                  controller: confirmPasswordController,
                                  hint: "Confirm password",
                                  obscureText: obscureText,
                                  focusNode: confirmPasswordFocusNode,
                                  toggleObscureText: toggleObscureText,
                                  validator: (value) {
                                    final String password = passwordController.text;
                                    return authValidator.confirmPasswordValidator(value, password);
                                  },
                                  prefIcon: const Icon(Icons.lock, size: 18),
                                  textInputAction: TextInputAction.done,
                                  isNonPasswordField: false,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),

                                const Center(
                                  child: Text(
                                    'By signing up you’re agree to our Privacy Policy and Terms and Conditions',
                                    style: TextStyle(
                                        fontSize: 14, color: kGrayTextC),
                                  ),
                                ),

                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),

                                // Container(child: TextB,)
                                TButton(
                                  loading: loading,
                                  constraints: constraints,
                                  btnColor: Theme.of(context).primaryColor,
                                  btnText: 'Continue',
                                  onPressed: signup,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.01,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Joined us?',
                                      style: TextStyle(
                                          color: kGrayTextC,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const LoginScreen()));
                                        },
                                        child: Text('Login',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 16,
                                            )))
                                  ],
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
