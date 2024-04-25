import 'package:flutter/material.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import 'package:zawadi/models/item_model.dart';
import 'package:zawadi/pages/product/product_screen.dart';
import 'package:zawadi/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    super.key,
    required this.item,
  });

  final EventModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // content
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return ProductScreen(
                item: item,
              );
            }));
          },
          child: Card(
            elevation: 1,
            shadowColor: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Image
                    Expanded(
                      child: Hero(
                        tag: item.imgUrl,
                        child: Image.asset(
                          item.imgUrl,
                        ),
                      ),
                    ),
                    //Name
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Price - Unit
                    Row(
                      children: [
                        Text(
                          utilsServices.priceToCurrency(10000),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text('/${item.hits}')
                      ],
                    )
                  ]),
            ),
          ),
        ),
        // add to the cart
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                color: themePrimaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topRight: Radius.circular(12)),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
