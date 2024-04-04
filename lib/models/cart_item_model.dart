import 'package:zawadi/models/item_model.dart';

class CartEventModel {
  EventModel item;
  int quantity;

  CartEventModel({
    required this.item,
    required this.quantity,
  });

  // Total price products
  //double totalPrice() => item.price * quantity;
  double totalPrice() => 10000;

  // Total order
}
