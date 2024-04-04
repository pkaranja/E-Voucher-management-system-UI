import 'package:zawadi/models/cart_item_model.dart';
import 'package:zawadi/models/item_model.dart';
import 'package:zawadi/models/orders_model.dart';
import 'package:zawadi/models/user_model.dart';

EventModel abstractArt = EventModel(
  description:
      'A art print refers to a reproduction of a work of art, typically in printed format.',
  imgUrl: 'assets/prints/marrybrown.png',
  title: 'MarryBrown',
  location: 'Eco residence',
  organizerName: 'MarryBrown',
  hits: 20,
  shares: 50,
  eventStatus: 'Ongoing',
  eventType: 'Comedy',
  eventStart: DateTime.parse("2023-03-15T14:00:00"),
  eventEnd: DateTime.parse("2023-03-15T18:00:00"),
);
//Product List - Prints
EventModel girlInRedArt = EventModel(
  description:
      'A art print refers to a reproduction of a work of art, typically in printed format.',
  imgUrl: 'assets/prints/orcadeco.jpg',
  title: 'Orca Deco',
  location: 'Eco residence',
  organizerName: 'Walters',
  hits: 20,
  shares: 50,
  eventStatus: 'Ongoing',
  eventType: 'Comedy',
  eventStart: DateTime.parse("2023-03-15T14:00:00"),
  eventEnd: DateTime.parse("2023-03-15T18:00:00"),
  // twitter = '@girlInRedArt',
  // facebook = '',
  // instagram = '#girlInRedArt',
);

EventModel goghSunArt = EventModel(
  description:
      'A art print refers to a reproduction of a work of art, typically in printed format.',
  imgUrl: 'assets/prints/samaki.jpg',
  title: 'Samaki Samaki',
  location: 'Eco residence',
  organizerName: 'Walters',
  hits: 20,
  shares: 50,
  eventStatus: 'Ongoing',
  eventType: 'Comedy',
  eventStart: DateTime.parse("2023-03-15T14:00:00"),
  eventEnd: DateTime.parse("2023-03-15T18:00:00"),
);
EventModel monaWithSunArt = EventModel(
  description:
      'A art print refers to a reproduction of a work of art, typically in printed format.',
  imgUrl: 'assets/prints/shoppers.png',
  title: 'Shoppers Plaza',
  location: 'Eco residence',
  organizerName: 'Walters',
  hits: 20,
  shares: 50,
  eventStatus: 'Ongoing',
  eventType: 'Comedy',
  eventStart: DateTime.parse("2023-03-15T14:00:00"),
  eventEnd: DateTime.parse("2023-03-15T18:00:00"),
);
EventModel sunflowerArt = EventModel(
  description:
      'A art print refers to a reproduction of a work of art, typically in printed format.',
  imgUrl: 'assets/prints/village.jpg',
  title: 'Village Supermarket',
  location: 'Eco residence',
  organizerName: 'Walters',
  hits: 20,
  shares: 50,
  eventStatus: 'Ongoing',
  eventType: 'Comedy',
  eventStart: DateTime.parse("2023-03-15T14:00:00"),
  eventEnd: DateTime.parse("2023-03-15T18:00:00"),
);

// Products List - Prints
List<EventModel> items = [
  girlInRedArt,
  abstractArt,
  goghSunArt,
  monaWithSunArt,
  sunflowerArt
];

//Cart List
List<CartEventModel> cartItems = [
  CartEventModel(
    item: girlInRedArt,
    quantity: 2,
  ),
  CartEventModel(
    item: girlInRedArt,
    quantity: 3,
  ),
  CartEventModel(
    item: girlInRedArt,
    quantity: 1,
  ),
];

//Profile
UserModel user = UserModel(
  name: 'Alexandro James',
  email: 'yourmail@mail.com',
  cpf: '##########',
  phone: '+12 34 5 6789-1011',
  password: '********',
);

// Orders List
List<OrderModel> orders = [
  OrderModel(
    overDueDateTime: DateTime.parse(
        '2022-01-17 10:04:00.321',
      ),
      copyAndPaste: 'iofwfwep23e032',
      createdDateTime: DateTime.parse(
        '2022-01-17 10:04:00.321',
      ),
      id: 'ssmdfksmfd',
      status: 'pending_payment',
      total: 11.0,
      items: [
        CartEventModel(
          item: girlInRedArt,
          quantity: 2,
        ),
        CartEventModel(
          item: abstractArt,
          quantity: 2,
        ),
      ]),
];
