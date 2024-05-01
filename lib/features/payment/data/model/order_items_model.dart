
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/features/gift_cards/data/model/giftcard_model.dart';

class OrderItems {
  int quantity;
  GiftcardModel giftcard;

  OrderItems({
    required this.quantity,
    required this.giftcard,
  });
}

GiftcardModel sample = GiftcardModel(
    id: 'id',
    code: 'code',
    cvv: 122,
    dateCreated: DateTime.now(),
    expirationDate: DateTime.now(),
    lastUpdated: DateTime.now(),
    title: 'title',
    message: 'message',
    themeId: 1,
    recipient: 'recipient',
    value: 20000,
    purchaserId: 'purchaserId',
    transactionId: 'gsdasasdg',
    issuerId: 'gewgeweg',
    status: GiftcardState.PENDING);

List<OrderItems> orderItems = [
  OrderItems(quantity: 2, giftcard: sample),
  OrderItems(quantity: 1, giftcard: sample),
];