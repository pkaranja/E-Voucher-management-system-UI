import 'package:flutter/material.dart';
import 'package:zawadi/global/styles/app_colors.dart';
import 'package:zawadi/models/cart_item_model.dart';
import 'package:zawadi/global/widgets/quantity_widget.dart';
import 'package:zawadi/core/helpers/data_formatter.dart';

class CartTile extends StatefulWidget {
  final CartEventModel cartItem;
  final Function(CartEventModel) remove;

  const CartTile({
    super.key,
    required this.cartItem,
    required this.remove,
  });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final DataFormatter utilsServices = DataFormatter();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: themePrimaryColor,
      child: ListTile(
        // Image
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          width: 60,
          height: 60,
        ),
        //Title
        title: Text(
          widget.cartItem.item.title,
          style: const TextStyle(
            fontFamily: 'Questrial',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Total
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: const TextStyle(fontFamily: 'Teko', fontSize: 24),
        ),

        // Button Quantity
        trailing: QuantityWidget(
          //suffixText: widget.cartItem.item.hits,
          suffixText: widget.cartItem.item.twitter,
          value: widget.cartItem.quantity,
          result: (quantity) {
            setState(() {
              widget.cartItem.quantity = quantity;

              if (quantity == 0) {
                //remove item cart
                widget.remove(widget.cartItem);
              }
            });
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
