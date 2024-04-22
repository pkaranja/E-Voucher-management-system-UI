import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutterwave_standard/flutterwave.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:zawadi/global/styles/theme.dart';
import 'package:zawadi/global/widgets/text_input_widget.dart';
import 'package:zawadi/models/profile_model.dart';

import '../../controllers/profile_controller.dart';
import '../../models/user_model.dart';
import '../../pages/vouchers/carddesign/widgets/custom_elevated_button.dart';
import '../input_validators.dart';


class PaymentFormWidget extends StatefulWidget {
  final BuildContext initialContext;
  final int amount;

  PaymentFormWidget({Key? key, required this.initialContext, required this.amount}) : super(key: key);

  @override
  _PaymentFormWidgetState createState() => _PaymentFormWidgetState();
}

class _PaymentFormWidgetState extends State<PaymentFormWidget> {
  late ProfileModel userProfileData;

  final remoteConfig = FirebaseRemoteConfig.instance;
  late final String flutterWaveEncryptionKey = remoteConfig.getString('flutterwave_uat_encryptionKey');
  late final String flutterWavePublicKey = remoteConfig.getString('flutterwave_uat_publicKey');

  late GlobalKey<FormState> formKey;
  bool isTestMode = true;
  final InputValidators formValidator = InputValidators();

  late final TextEditingController recipientEmailController;
  late final TextEditingController recipientPhoneNumberController;
  late final TextEditingController customFromNameController;
  late final TextEditingController recipientNameController;
  late final TextEditingController voucherMessageController;

  late final FocusNode recipientEmailFocusNode;
  late final FocusNode recipientPhoneNumberFocusNode;
  late final FocusNode customFromNameFocusNode;
  late final FocusNode recipientNameFocusNode;
  late final FocusNode  voucherMessageFocusNode;

  @override
  void initState() {
      super.initState();
      formKey = GlobalKey<FormState>();

      //initiate customer profile
      initiateProfile();

      //Sender
      customFromNameController = TextEditingController();
      voucherMessageController = TextEditingController();

      customFromNameFocusNode = FocusNode();
      voucherMessageFocusNode = FocusNode();

      //Recipient
      recipientNameController = TextEditingController();
      recipientEmailController = TextEditingController();
      recipientPhoneNumberController = TextEditingController();

      recipientNameFocusNode = FocusNode();
      recipientEmailFocusNode = FocusNode();
      recipientPhoneNumberFocusNode = FocusNode();
    }

  void initiateProfile() {
    ProfileController().getProfileFromPreferences().then((profile) {
      customFromNameController.text = profile.fullName ?? '';

      userProfileData = profile;
    });
  }

    @override
    void dispose() {

      recipientEmailController.dispose();
      recipientPhoneNumberController.dispose();
      customFromNameController.dispose();
      recipientNameController.dispose();
      voucherMessageController.dispose();

      customFromNameFocusNode.dispose();
      recipientNameFocusNode.dispose();
      voucherMessageFocusNode.dispose();
      recipientEmailFocusNode.dispose();
      recipientPhoneNumberFocusNode.dispose();

      super.dispose();
    }


    @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            DynamicInputWidget(
              controller: recipientNameController,
              obscureText: false,
              focusNode: recipientNameFocusNode,
              toggleObscureText: null,
              validator: formValidator.textValidator,
              prefIcon: const Icon(Icons.person, size: 18),
              hint: "Enter recipient full name",
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              isNonPasswordField: true,
            ),
            const SizedBox(height: 10),
            DynamicInputWidget(
              controller: recipientEmailController,
              obscureText: false,
              focusNode: recipientEmailFocusNode,
              toggleObscureText: null,
              validator: formValidator.emailValidator,
              prefIcon: const Icon(Icons.alternate_email, size: 18),
              hint: "Enter recipient e-mail address",
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              isNonPasswordField: true,
            ),
            const SizedBox(height: 10),
            DynamicInputWidget(
              controller: recipientPhoneNumberController,
              obscureText: false,
              focusNode: recipientPhoneNumberFocusNode,
              toggleObscureText: null,
              validator: formValidator.textValidator,
              prefIcon: const Icon(Icons.phone, size: 18),
              hint: "Enter recipient phone number",
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              isNonPasswordField: true,
            ),
            const SizedBox(height: 10),
            DynamicInputWidget(
              controller: voucherMessageController,
              obscureText: false,
              focusNode: voucherMessageFocusNode,
              toggleObscureText: null,
              validator: formValidator.textValidator,
              prefIcon: const Icon(Icons.message, size: 18),
              hint: "Enter voucher message",
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              isNonPasswordField: true,
              maxLines: 5,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: CustomElevatedButton(
                text: 'Make payment',
                onPressed: _onPressed,
                backgroundColor: Theme.of(context).hintColor,
                fixedSize: Size(size.width, 50),
              ),
            )
          ],
        ),
      )
    );
  }

  _onPressed() {
    final currentState = formKey.currentState;
    if (currentState != null && currentState.validate()) {
      _createGiftCard();
      _handlePaymentInitialization();
    }
  }

  //Create gift card on Zawadi platform
  _createGiftCard() async {

  }

  //Initialize payment
  _handlePaymentInitialization() async {
    final Customer customer = Customer(
      name: userProfileData.fullName,
      email: userProfileData.email ?? '',
      phoneNumber: userProfileData.phoneNumber,
    );

    final Flutterwave flutterwave = Flutterwave(
      context: context,
      publicKey: flutterWavePublicKey.trim(),
      currency: "TZS",
      redirectUrl: 'https://facebook.com',
      txRef: Uuid().v1(),
      amount: widget.amount.toString().trim(),
      customer: customer,
      paymentOptions: "card, ussd",
      customization: Customization(title: "Test Payment"),
      isTestMode: isTestMode,
    );
    final ChargeResponse response = await flutterwave.charge();
    showLoading(response.toString());
    print("${response.toJson()}");
  }

  String getPublicKey() {
    return "";
  }

  Future<void> showLoading(String message) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            width: double.infinity,
            height: 50,
            child: Text(message),
          ),
        );
      },
    );
  }
}
