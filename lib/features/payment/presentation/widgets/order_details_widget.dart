import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/global/styles/app_colors.dart';

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
      height: screenHeight * 0.41,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.all(20),
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
              hintText: "Enter Discount Code",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text(
                  "Apply",
                  style: TextStyle(
                    color: themePrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Amount",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                Utils.formatMoney(59000),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Platform fee (VAT inclusive)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                Utils.formatMoney(500),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discount (5%)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                Utils.formatMoney(0),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Redeemed points",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                Utils.formatMoney(2000),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                Utils.formatMoney(42000),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _dialogBuilder(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: themePrimaryColor,
              minimumSize: const Size(double.infinity, 55),
            ),
            child: const Text(
              "Check out",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
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