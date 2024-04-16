
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';
import 'package:zawadi/global/widgets/date_input_widget.dart';
import 'dart:io';

import '../../controllers/flutter_toast.dart';
import '../../controllers/profile_controller.dart';
import '../../global/styles/app_colors.dart';
import '../../models/user_model.dart';
import '../../widgets/button.dart';
import '../../widgets/date_field.dart';
import '../../widgets/text_field.dart';
import '../../global/input_validators.dart';
import '../../global/widgets/text_input_widget.dart';
import '../auth/utils/utils.dart';

class UpdateAccountScreen extends StatefulWidget {
  const UpdateAccountScreen({super.key});

  @override
  State<UpdateAccountScreen> createState() => _UpdateAccountScreenState();
}

class _UpdateAccountScreenState extends State<UpdateAccountScreen> {
  final InputValidators authValidator = InputValidators();
  final ref = FirebaseDatabase.instance.ref('Users');
  final user = FirebaseAuth.instance.currentUser!;
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  bool obscureText = true;
  String imageUrl = " ";
  String? value;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  final dobController = TextEditingController();

  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final addressFocusNode = FocusNode();
  final dobFocusNode = FocusNode();


  Future<void> update() async {
    DatabaseReference userRef = ref.child(user.uid);
    DatabaseReference kycRef = userRef.child('kyc');

    setState(() {
      loading = true;
    });
    // Show loading dialog
    loadingDialog(context);

    int age = calculateAge() as int;

    // Prepare data for update
    Map<String, dynamic> userData = {
      'firstName': firstNameController.text.toString(),
      'lastName': lastNameController.text.toString(),
      'phoneNumber': phoneNumberController.text.toString(),
      'address': addressController.text.toString(),
      'dob': dobController.text.toString(),
    };

    Map<String, dynamic> kycData = {
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
    };

    // Perform database update
    try {
      await Future.wait([
        userRef.update(userData),
        kycRef.set(kycData),
      ]);
      // Database update successful
      Navigator.pop(context);
      ToastMessage().toastMessage('Updated!', Colors.green);
    } catch (error) {
      // Error occurred
      ToastMessage().toastMessage(error.toString(), Colors.red);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => ProfileController(),
        child: Consumer<ProfileController>(
          builder: (context, provider, child) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return OrientationBuilder(
                  builder: (BuildContext context, Orientation orientation) {
                    return SafeArea(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: constraints.maxHeight * 0.03),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: const Icon(
                                        Icons.keyboard_backspace,
                                        size: 22,
                                      ),
                                    ),
                                    SizedBox(
                                      width: constraints.maxWidth * 0.03,
                                    ),
                                    const Text(
                                      'Update Account',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(height: constraints.maxHeight * 0.03),
                                Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 4,
                                                color: Theme.of(context)
                                                    .cardColor),
                                            shape: BoxShape.circle,
                                            color:
                                            Theme.of(context).canvasColor),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          child: provider.image == null
                                              ? const Icon(
                                            Icons.person,
                                            size: 90,
                                            color: themeExtraDarkGreyColor,
                                          )
                                              : Image.file(
                                              File(provider.image!.path)
                                                  .absolute),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 3,
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 3,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                shape: BoxShape.circle,
                                                color: Theme.of(context)
                                                    .cardColor),
                                            child: GestureDetector(
                                              onTap: () {
                                                provider.pickImage(context);
                                              },
                                              child: const Icon(
                                                Icons.edit,
                                                size: 20,
                                                color: themeExtraDarkGreyColor,
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                SBox(constraints),
                                DynamicInputWidget(
                                  controller: firstNameController,
                                  hint: "First Name",
                                  obscureText: false,
                                  focusNode: firstNameFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.person, size: 20),
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.name,
                                ),
                                SBox(constraints),
                                DynamicInputWidget(
                                  controller: lastNameController,
                                  hint: "Last Name",
                                  obscureText: false,
                                  focusNode: lastNameFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.person, size: 20),
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.name,
                                ),
                                SBox(constraints),
                                DynamicInputWidget(
                                  controller: phoneNumberController,
                                  hint: "Phone Number",
                                  obscureText: false,
                                  focusNode: phoneFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.phone, size: 20),
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.phone,
                                ),
                                SBox(constraints),
                                DynamicInputWidget(
                                  controller: addressController,
                                  hint: "Address",
                                  obscureText: false,
                                  focusNode: addressFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.maps_home_work_outlined, size: 20),
                                  textInputAction: TextInputAction.next,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.streetAddress,
                                ),
                                SBox(constraints),
                                DateInputWidget(
                                  controller: dobController,
                                  hint: "Date of Birth",
                                  obscureText: false,
                                  focusNode: dobFocusNode,
                                  toggleObscureText: null,
                                  validator: authValidator.textValidator,
                                  prefIcon: const Icon(Icons.date_range_outlined, size: 20),
                                  textInputAction: TextInputAction.done,
                                  isNonPasswordField: true,
                                  keyboardType: TextInputType.datetime,
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.05,
                                ),
                                TButton(
                                  constraints: constraints,
                                  btnColor: Theme.of(context).primaryColor,
                                  btnText: 'Continue',
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      update();
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: orientation == Orientation.portrait
                                      ? constraints.maxHeight * 0.04
                                      : constraints.maxHeight * 0.08,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  SizedBox SBox(BoxConstraints constraints) =>
      SizedBox(height: constraints.maxHeight * 0.015);
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