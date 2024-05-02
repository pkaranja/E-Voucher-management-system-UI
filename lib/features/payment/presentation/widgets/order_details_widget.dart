import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/presentation/widgets/loading_button_widget.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/utils.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model/order_items_model.dart';

class OrderDetailsBox extends StatelessWidget {
  final List<OrderItems> items;
  const OrderDetailsBox({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      // Set height to 20% of the screen height
      //TODO: find a better way to do this
      height: screenHeight * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 15.w, top: 15.w, bottom: 0, right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              fillColor: themeAlmostWhiteColor,
              hintText: "Enter discount code",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: Text(
                  "Apply", style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amount", style: Theme.of(context).textTheme.bodySmall
              ),
              Text(
                Utils.formatMoney(59000), style: Theme.of(context).textTheme.labelMedium
              )
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "Platform fee (VAT inclusive)", style: Theme.of(context).textTheme.bodySmall
              ),
              Text(
                Utils.formatMoney(500), style: Theme.of(context).textTheme.labelMedium
              )
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount (5%)", style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                Utils.formatMoney(0), style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
          SizedBox(height: 15.h),
          const Divider(),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total", style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                Utils.formatMoney(42000), style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),

          SizedBox(height: 10.h),

          TButton(
            loading: false,
            constraints: BoxConstraints.loose(Size.infinite),
            btnColor:Theme.of(context).primaryColor,
            btnText: 'Pay',
            onPressed: () async {
              _dialogBuilder(context);
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          content: Container(
            width: 339.w,
            height: 452.h,
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
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
                Container(
                  height: 15.h,
                  width: 269.w,
                  margin: EdgeInsets.only(bottom: 14.h),
                  decoration: BoxDecoration(
                      color: Color(0xffababab), borderRadius: BorderRadius.circular(50)),
                ),
                Container(
                  height: 15.h,
                  width: 169.w,
                  margin: EdgeInsets.only(bottom: 48.h),
                  decoration: BoxDecoration(
                      color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 58.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4), borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
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