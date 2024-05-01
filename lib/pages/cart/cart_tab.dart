import 'package:flutter/material.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import 'package:zawadi/models/cart_item_model.dart';
import 'package:zawadi/core/helpers/data_formatter.dart';

import '../../core/presentation/widgets/app_bar_widget.dart';

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final DataFormatter utilsServices = DataFormatter();

  void removeItemFromCart(CartEventModel cartItem) {
    setState(() {
      //app_data.cartItems.remove(cartItem);
    });
  }

  double cartTotalPrice() {
    double total = 0.0;

    // for (var item in app_data.cartItems) {
    //   total += item.totalPrice();
    // }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: const QrooAppBar( hasBackButton: true ),

      //Content
      body: Column(
        children: [
          //Expanded(
            // child: ListView.builder(
            //   itemCount: app_data.cartItems.length,
            //   itemBuilder: (_, index) {
            //     return CartTile(
            //       cartItem: app_data.cartItems[index],
            //       remove: removeItemFromCart,
            //     );
            //   },
            // ),
          //),
          Container(
            padding: const EdgeInsets.all(16),
            height: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ]),

            // Order Total
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Order total:',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Teko',
                  ),
                ),
                Text(
                  utilsServices.priceToCurrency(cartTotalPrice()),
                  style: const TextStyle(
                    fontFamily: 'Teko',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                // Button Buy
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      bool? result = await showOrderConfirmation();
                      print(result);
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: themePrimaryColor),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> showOrderConfirmation() {
    return showDialog<bool>(
        barrierDismissible: true,
        barrierColor: const Color.fromARGB(110, 0, 0, 0),
        context: context,
        builder: (context) {
          return AlertDialog(
            actionsOverflowButtonSpacing: 0.1,
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.white,
            title: Text(
              'Confirmation',
              style: TextStyle(
                color: themePrimaryColor,
                fontFamily: 'Questrial',
                fontWeight: FontWeight.bold,
              ),
            ),
            content: const Text(
              'Do you really want to complete the order?',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'OpenSans',
                fontSize: 18,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                  // return false
                },
                child: const Text(
                  'No, thank you',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  //return true
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themePrimaryColor,
                ),
                child: const Text(
                  'Yes, I Want Now!!',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          );
        });
  }
}
