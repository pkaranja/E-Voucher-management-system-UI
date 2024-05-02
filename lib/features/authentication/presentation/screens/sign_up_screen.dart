import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:zawadi/core/helpers/input_validators.dart';
import 'package:zawadi/features/authentication/presentation/screens/verify_screen.dart';
import '../../../../core/presentation/widgets/logo_widget.dart';
import '../../../../core/presentation/widgets/text_input_widget.dart';
import '../../../../core/presentation/widgets/loading_button_widget.dart';
import '../../../../core/styles/app_colors.dart';
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
  final fullNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode fullNameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  DatabaseReference ref = FirebaseDatabase.instance.ref().child('Users');

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    fullNameController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    fullNameFocusNode.dispose();

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
              User? user = value.user;
              String fullName = fullNameController.text.toString();

              // Splitting the full name into first and last name
              List<String> nameParts = fullName.split(' ');

              // Extracting first and last name
              String firstName = nameParts.isNotEmpty ? nameParts[0] : '';
              String lastName = nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';

              user?.updateDisplayName(fullName);

              ref.child(value.user!.uid).set({
                    'uid': value.user!.uid.toString(),
                    'email': value.user!.email.toString(),
                    'firstName': firstName,
                    'lastName': lastName,
                    'phoneNumber': '',
                    'profilePic': '',
                  });

          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const VerifyEmailScreen()));
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
                        height: constraints.maxHeight * 0.39,
                        child: const Center(
                          child: LogoWidget(size: 140),
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
                                Text(
                                  'Create account',
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    color: themeAlmostBlackColor,
                                    fontFamily: 'QrooFont',
                                    fontWeight: FontWeight.normal
                                  ),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),
                                DynamicInputWidget(
                                  controller: fullNameController,
                                  obscureText: false,
                                  focusNode: fullNameFocusNode,
                                  suffixClickAction: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.person, size: 18),
                                  hint: "Enter full name",
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.name,
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
                                  hint: "Enter valid email address",
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
                                  suffixClickAction: toggleObscureText,
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
                                  suffixClickAction: toggleObscureText,
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
                                        fontSize: 14,
                                        color: themeExtraDarkGreyColor,
                                        fontFamily: 'QrooFont'
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: constraints.maxHeight * 0.02,
                                ),

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
                                      'Have an account?',
                                      style: TextStyle(
                                          color: themeAlmostBlackColor,
                                          fontSize: 16,
                                          fontFamily: 'QrooFont'
                                      ),
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
                                            color: Theme.of(context).primaryColor,
                                            fontFamily: 'QrooFont',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                          )),
                                      )
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
