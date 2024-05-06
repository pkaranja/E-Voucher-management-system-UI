import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterwave_standard/core/flutterwave.dart';
import 'package:flutterwave_standard/models/requests/customer.dart';
import 'package:flutterwave_standard/models/requests/customizations.dart';
import 'package:flutterwave_standard/models/responses/charge_response.dart';
import 'package:uuid/uuid.dart';
import 'package:zawadi/features/gift_cards/data/model/giftcard_model.dart';
import 'package:zawadi/features/gift_cards/repository/giftcard_repository_impl.dart';
import 'package:zawadi/features/payment/presentation/widgets/payment_form_widget.dart';
import '../../../../controllers/profile_controller.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/presentation/widgets/loading_button_widget.dart';
import '../../../../core/styles/animations.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/utils.dart';
import '../../../../gen/assets.gen.dart';
import '../../../authentication/models/profile_model.dart';
import '../../../gift_cards/provider/temporary_giftcard_provider.dart';

class OrderDetailsWidget extends ConsumerStatefulWidget {
  const OrderDetailsWidget({super.key});

  @override
  ConsumerState<OrderDetailsWidget> createState() => _OrderDetailsWidgetState();
}

class _OrderDetailsWidgetState extends ConsumerState<OrderDetailsWidget> {
  late final Customer customer;
  late final GiftcardModel giftcard;
  late ProfileModel userProfileData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initiateProfile();
  }

  void initiateGiftcardData(){
    final giftcardDetails = ref.watch(temporaryGiftcardProvider);
    //init gift card object
    giftcard = GiftcardModel(
      theme: giftcardDetails!.themeId,
      title: giftcardDetails.title,
      value: giftcardDetails.amount,
      expirationDate: DateTime.now(),
      message: giftcardDetails.message,
      purchaserName: userProfileData.fullName ?? '',
      purchaser: userProfileData.profileId!,
      recipientPhoneNumber: giftcardDetails.recipient!.phoneNumber!.number.toString(),
      recipientName: giftcardDetails.recipient?.fullName ?? '',
      issuer: giftcardDetails.issuerId,
      status: GiftcardState.PENDING
    );
  }

  void initiateCustomerDetails(profile){
    //init customer
    customer = Customer(
      name: profile.fullName,
      email: profile.email!,
      phoneNumber: profile.phoneNumber,
    );
  }

  void initiateProfile() {
    ProfileController().getProfileFromPreferences().then((profile) {
      setState(() {
        userProfileData = profile;
        initiateCustomerDetails(profile);
        initiateGiftcardData();
        isLoading = false;
      });
    });
  }

  _createGiftcard(WidgetRef ref){
    ref
      .read(giftcardRepositoryProvider)
      .createOne(request: giftcard);
  }

  _handleTransaction(BuildContext currentContext, WidgetRef ref, double amount) async{
    final Flutterwave flutterwave = Flutterwave(
      context: currentContext,
      publicKey: Constants.flutterWavePublicKey!,
      currency: "TZS",
      redirectUrl: 'https://facebook.com',
      txRef: Uuid().v1(),
      amount: amount.toString().trim(),
      customer: customer,
      paymentOptions: "card, ussd",
      customization: Customization(title: "Test Payment"),
      isTestMode: Constants.testMode,
    );
    final ChargeResponse response = await flutterwave.charge();
    print("${response.toJson()}");
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final giftcardDetails = ref.watch(temporaryGiftcardProvider);

    //Check remote value, check local value then default to 10 if all fails
    final int platformFee = Constants.platformFee ?? int.parse(dotenv.env['PLATFORM_FEE'] ?? '10');
    final double fee = giftcardDetails!.amount * ( platformFee / 100 );

    //Total
   final total = giftcardDetails.amount + fee;

    return AnimatedContainer(
      duration: AppAnimation.kAnimationDuration,
      curve: AppAnimation.kAnimationCurve,
      // Set height to 20% of the screen height
      //TODO: find a better way to do this
      height: screenHeight * 0.3,
      width: double.infinity,
      padding: EdgeInsets.only(left: 15.w, top: 15.w, bottom: 0, right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( "Amount", style: Theme.of(context).textTheme.bodySmall ),
              Text( Utils.formatMoney(giftcardDetails.amount), style: Theme.of(context).textTheme.labelMedium )
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( "Platform fee (VAT inclusive)", style: Theme.of(context).textTheme.bodySmall ),
              Text( Utils.formatMoney(fee), style: Theme.of(context).textTheme.labelMedium )
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( "Discount", style: Theme.of(context).textTheme.bodySmall, ),
              Text( Utils.formatMoney(0), style: Theme.of(context).textTheme.labelMedium, )
            ],
          ),
          SizedBox(height: 15.h),
          const Divider( color: themePrimaryColor ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( "Total", style: Theme.of(context).textTheme.labelMedium, ),
              Text( Utils.formatMoney(total), style: Theme.of(context).textTheme.titleMedium )
            ],
          ),

          SizedBox(height: 10.h),

          TButton(
            loading: false,
            constraints: BoxConstraints.loose(Size.infinite),
            btnColor:Theme.of(context).primaryColor,
            btnText: 'Confirm and pay',
            onPressed: () async {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return PaymentFormWidget();
                },
              );
            },
          ),
        ],
      ),
    );
  }


  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(left: 26.w, right: 26.w),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          content: AnimatedContainer(
            duration: AppAnimation.kAnimationDuration,
            curve: AppAnimation.kAnimationCurve,
            width: 339.w,
            height: 452.h,
            alignment: Alignment.center,
            child: Column(
              children: [
                AnimatedContainer(
                  duration: AppAnimation.kAnimationDuration,
                  curve: AppAnimation.kAnimationCurve,
                  height: 150.w,
                  width: 150.w,
                  margin: EdgeInsets.only(top: 56.h, bottom: 42.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.images.giftBox.image().image,
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                AnimatedContainer(
                  duration: AppAnimation.kAnimationDuration,
                  curve: AppAnimation.kAnimationCurve,
                  height: 15.h,
                  width: 269.w,
                  margin: EdgeInsets.only(bottom: 14.h),
                  decoration: BoxDecoration(
                      color: Color(0xffababab), borderRadius: BorderRadius.circular(50)),
                ),
                AnimatedContainer(
                  duration: AppAnimation.kAnimationDuration,
                  curve: AppAnimation.kAnimationCurve,
                  height: 15.h,
                  width: 169.w,
                  margin: EdgeInsets.only(bottom: 48.h),
                  decoration: BoxDecoration(
                      color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      duration: AppAnimation.kAnimationDuration,
                      curve: AppAnimation.kAnimationCurve,
                      height: 58.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    AnimatedContainer(
                      duration: AppAnimation.kAnimationDuration,
                      curve: AppAnimation.kAnimationCurve,
                      height: 58.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}