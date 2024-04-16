import 'dart:ui';

import 'package:flutter/material.dart';

enum CardCategory {
  birthday,
  christmas,
  general,
  congratulation,
}

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<CardCategory> categories;

  const CardModel({
    required this.id,
    required this.name,
    required this.thumbnailPath,
    required this.categories,
    required this.bgColor,
  });

  static List<CardModel> sampleCards = [
    const CardModel(
      id: 1,
      name: 'Birthday',
      thumbnailPath: 'assets/prints/birthday.jpg',
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: Colors.purple,
    ),
    const CardModel(
      id: 2,
      name: 'Easter',
      thumbnailPath: 'assets/prints/easter.jpg',
      categories: [ CardCategory.general ],
      bgColor: Colors.yellow,
    ),
    const CardModel(
      id: 3,
      name: 'Birthday',
      thumbnailPath: 'assets/prints/black_box.jpg',
      categories: [CardCategory.general],
      bgColor: Colors.blueAccent,
    ),
    const CardModel(
      id: 4,
      name: 'Merry Christmas',
      thumbnailPath: 'assets/prints/merry_christmas.jpg',
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: Colors.green,
    ),
    const CardModel(
      id: 5,
      name: 'Thanks',
      thumbnailPath: 'assets/prints/thanks.jpg',
      categories: [CardCategory.general],
      bgColor: Colors.black,
    ),
    const CardModel(
      id: 6,
      name: 'Giving Season',
      thumbnailPath: 'assets/prints/gift_box.jpg',
      categories: [CardCategory.general, CardCategory.congratulation],
      bgColor: Colors.blueGrey,
    ),
  ];
}
