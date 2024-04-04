import 'package:flutter/material.dart';
import 'package:zawadi/config/custom_colors.dart';
import 'package:zawadi/models/item_model.dart';
import 'package:zawadi/global/widgets/quantity_widget.dart';
import 'package:zawadi/services/utils_services.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.item});

  final EventModel item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Stack(
        children: [
          //Content
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 52, 8, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Hero(
                        tag: widget.item.imgUrl,
                        child: Image.asset(
                          widget.item.imgUrl,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 4,
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.item.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    height: 1,
                                    fontSize: 38,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              //QuantityWidget
                              QuantityWidget(
                                suffixText: "10",
                                value: cartItemQuantity,
                                result: (int quantity) {
                                  setState(() {
                                    cartItemQuantity = quantity;
                                  });
                                },
                              )
                            ],
                          ),
                          //Price
                          Text(
                            //utilsServices.priceToCurrency(widget.item.price),
                            utilsServices.priceToCurrency(10000),
                            style: const TextStyle(
                              fontSize: 28,
                              fontFamily: 'Teko',
                            ),
                          ),
                          //Description
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: SingleChildScrollView(
                                child: Text(
                                  widget.item.description,
                                  style: const TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 18,
                                    height: 1.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Button add to the cart
                          SizedBox(
                            height: 38,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontFamily: 'Opensans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {},
                              label: const Text('Add to cart'),
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
