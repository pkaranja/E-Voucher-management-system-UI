import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:zawadi/global/widgets/logo.dart';
import 'package:zawadi/pages/auth/sign_up_screen.dart';
import 'package:zawadi/global/input_validators.dart';
import 'package:zawadi/global/widgets/text_input_widget.dart';
import '../../global/styles/app_colors.dart';
import '../../widgets/button.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool loading = false;
  bool obscureText = true;

  final _formKey = GlobalKey<FormState>();
  final InputValidators authValidator = InputValidators();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Future login() async {
    setState(() {
      loading = true;
    });
    await _auth
      .signInWithEmailAndPassword(
        email: emailController.text.toString().trim(),
        password: passwordController.text.toString().trim()
        )
      .then((value) {
        GoRouter.of(context).go('/');
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.error(
              message:
              'Something went wrong while processing your request, please try again later',
            ),
        );
        setState(() {
          loading = false;
        });
      });
    }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
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
                          height: constraints.maxHeight * 0.18,
                        ),
                        const LogoWidget(size: 140),
                        SizedBox(
                          height: constraints.maxHeight * 0.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric( vertical: 20, horizontal: 30 ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                // color: Colors.white,
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height:
                                          constraints.maxHeight * 0.015),
                                       Text(
                                        'Log in\nto your account',
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
                                        controller: emailController,
                                        obscureText: false,
                                        focusNode: emailFocusNode,
                                        toggleObscureText: null,
                                        validator: authValidator.emailValidator,
                                        prefIcon: const Icon(Icons.alternate_email, size: 18),
                                        hint: "Enter email address",
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.emailAddress,
                                        isNonPasswordField: true,
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.02,
                                      ),
                                      DynamicInputWidget(
                                        controller: passwordController,
                                        hint: "Enter password",
                                        obscureText: obscureText,
                                        focusNode: passwordFocusNode,
                                        toggleObscureText: toggleObscureText,
                                        validator: authValidator.passwordValidator,
                                        prefIcon: const Icon(Icons.lock, size: 18),
                                        textInputAction: TextInputAction.done,
                                        isNonPasswordField: false,
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.025,
                                      ),

                                      // Container(child: TextB,)
                                      TButton(
                                        loading: loading,
                                        constraints: constraints,
                                        btnColor:
                                        Theme.of(context).primaryColor,
                                        btnText: 'Login',
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            login();
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'New to Zawadi?',
                                            style: TextStyle(
                                              color: themeAlmostBlackColor,
                                              fontSize: 12.sp,
                                              fontFamily: 'QrooFont'
                                            ),
                                          ),
                                          TextButton(
                                            child: Text(
                                              'Register',
                                              style: TextStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontFamily: 'QrooFont',
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                      const SignupScreen()));
                                            },
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                        child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontFamily: 'QrooFont',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const ForgotPassScreen()));
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
