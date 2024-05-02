import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutterwave_standard/flutterwave.dart';
import 'package:uuid/uuid.dart';
import 'package:zawadi/features/authentication/models/profile_model.dart';

import '../../../../controllers/profile_controller.dart';
import '../../../../core/presentation/widgets/loading_button_widget.dart';

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

  @override
  void initState() {
      super.initState();
      formKey = GlobalKey<FormState>();

      //initiate customer profile
      initiateProfile();
    }

  void initiateProfile() {
    ProfileController().getProfileFromPreferences().then((profile) {
      userProfileData = profile;
    });
  }

    @override
    void dispose() {
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
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: TButton(
                loading: false,
                constraints: BoxConstraints.loose(Size.infinite),
                btnColor:Theme.of(context).primaryColor,
                btnText: 'Complete payment',
                onPressed: () async {
                  _onPressed;
                },
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
