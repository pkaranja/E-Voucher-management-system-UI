
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';
import 'package:zawadi/controllers/apiRequests.dart';
import 'package:zawadi/global/widgets/date_input_widget.dart';
import 'dart:io';

import '../../controllers/flutter_toast.dart';
import '../../controllers/profile_controller.dart';
import '../../global/styles/app_colors.dart';
import '../../global/widgets/app_bar.dart';
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
  final user = FirebaseAuth.instance.currentUser!;
  final _formKey = GlobalKey<FormState>();
  final ref = FirebaseDatabase.instance.ref('Users');

  bool loading = false;
  bool obscureText = true;
  String imageUrl = " ";
  String? value;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final emailController = TextEditingController();

  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final phoneNumberFocusNode = FocusNode();
  final addressFocusNode = FocusNode();
  final dateOfBirthFocusNode = FocusNode();
  final emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    initTextFieldData();
  }


  //initTextFieldData
  Future<void> initTextFieldData() async {
    DatabaseEvent userDataEvent = await ref.child(user.uid).once();
    // Extract data from userDataEvent
    Map<dynamic, dynamic>? userData = userDataEvent.snapshot.value as Map<dynamic, dynamic>?;

    // Check if userData is not null
    if (userData != null) {
      // Update text controller values with user data
      firstNameController.text = userData['firstName'] ?? '';
      lastNameController.text = userData['lastName'] ?? '';
      phoneNumberController.text = userData['phoneNumber'] ?? '';
      addressController.text = userData['address'] ?? '';
      dateOfBirthController.text = userData['dateOfBirth'] ?? '';
      emailController.text = userData['email'] ?? '';
    }
  }

  //Update profile data
  Future<void> update() async {
    DatabaseReference userRef = ref.child(user.uid);
    setState(() {
      loading = true;
    });
    // Show loading dialog
    loadingDialog(context);
    int age = calculateAge(dateOfBirthController.text.toString());

    // Prepare data for update
    Map<String, dynamic> userData = {
      'firstName': firstNameController.text.toString(),
      'lastName': lastNameController.text.toString(),
      'phoneNumber': phoneNumberController.text.toString(),
      'address': addressController.text.toString(),
      'dateOfBirth': dateOfBirthController.text.toString(),
      'age': age
    };

    // Perform database update
    try {
      await Future.wait([
        userRef.update(userData),
        ApiRequests().updateProfile(userData, user.uid )
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
                return Scaffold(
                  appBar: const QrooAppBar(
                    title1: 'Zawadi',
                    title2: ' Digital',
                    hasBackButton: false,
                    hasNotifications: false,
                  ),
                  body: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Padding(
                        padding: EdgeInsets.symmetric( horizontal: 15.w, vertical: 5.h),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h),
                              Text(
                                'Update profile',
                                style: TextStyle(
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'QrooFont',
                                ),
                              ),
                              SizedBox( height: constraints.maxHeight * 0.04,),
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          border: Border.all( width: 4, color: Theme.of(context).cardColor),
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).canvasColor),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: provider.image == null ? const Icon(
                                          Icons.person,
                                          size: 90,
                                          color: themeExtraDarkGreyColor,
                                        ): Image.file( File(provider.image!.path).absolute),
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
                                                color: Theme.of(context).primaryColor),
                                            shape: BoxShape.circle,
                                            color: Theme.of(context).cardColor),
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

                              SizedBox( height: constraints.maxHeight * 0.04,),

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

                              SizedBox( height: constraints.maxHeight * 0.02,),

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

                              SizedBox( height: constraints.maxHeight * 0.02,),

                              DynamicInputWidget(
                                controller: phoneNumberController,
                                hint: "Phone Number",
                                obscureText: false,
                                focusNode: phoneNumberFocusNode,
                                toggleObscureText: null,
                                validator: authValidator.phoneNumberValidator,
                                prefIcon: const Icon(Icons.phone, size: 20),
                                textInputAction: TextInputAction.next,
                                isNonPasswordField: true,
                                keyboardType: TextInputType.phone,
                              ),

                              SizedBox( height: constraints.maxHeight * 0.02,),

                              DynamicInputWidget(
                                controller: addressController,
                                hint: "Address",
                                obscureText: false,
                                focusNode: addressFocusNode,
                                toggleObscureText: null,
                                validator: null,
                                prefIcon: const Icon(
                                    Icons.maps_home_work_outlined, size: 20),
                                textInputAction: TextInputAction.next,
                                isNonPasswordField: true,
                                keyboardType: TextInputType.streetAddress,
                              ),

                              SizedBox( height: constraints.maxHeight * 0.02,),

                              DateInputWidget(
                                controller: dateOfBirthController,
                                hint: "Date of Birth",
                                obscureText: false,
                                focusNode: dateOfBirthFocusNode,
                                toggleObscureText: null,
                                validator: authValidator.textValidator,
                                prefIcon: const Icon(
                                    Icons.date_range_outlined, size: 20),
                                textInputAction: TextInputAction.done,
                                isNonPasswordField: true,
                                keyboardType: TextInputType.datetime,
                              ),

                              SizedBox( height: constraints.maxHeight * 0.04,),

                              TButton(
                                btnColor: Theme
                                    .of(context)
                                    .primaryColor,
                                btnText: 'Continue',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    update();
                                  }
                                }, constraints: constraints,
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                );
              }),
        )
    );
  }
}

int calculateAge(String dateString) {
  final DateFormat format = DateFormat("d MMMM yyyy");
  final DateTime birthDate = format.parse(dateString);
  final DateTime currentDate = DateTime.now();

  final age = currentDate.year - birthDate.year;

  // Check if the current date is before the birthday this year
  // If so, subtract one from the age
  if (currentDate.month < birthDate.month ||
      (currentDate.month == birthDate.month && currentDate.day < birthDate.day)) {
    return age - 1;
  }

  return age;
}
