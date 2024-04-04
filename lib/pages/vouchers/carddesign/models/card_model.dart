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
    CardModel(
      id: 1,
      name: 'Christmas Doge',
      thumbnailPath: 'assets/prints/samaki.jpg',
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: Colors.blueAccent,
    ),
    CardModel(
      id: 2,
      name: 'Flowers Bouquet',
      thumbnailPath: 'assets/prints/orcadeco.jpg',
      categories: [
        CardCategory.general,
        CardCategory.christmas,
        CardCategory.congratulation
      ],
      bgColor: Colors.blueAccent,
    ),
    CardModel(
      id: 3,
      name: 'Ho Ho Ho',
      thumbnailPath: 'assets/prints/shoppers.png',
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: Colors.orange,
    ),
    const CardModel(
      id: 4,
      name: 'Choco Cake',
      thumbnailPath: 'assets/prints/samaki.jpg',
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: Colors.orange,
    ),
    const CardModel(
      id: 5,
      name: 'Happy Birthday',
      thumbnailPath: 'assets/prints/marrybrown.png',
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: Colors.orange,
    ),
    const CardModel(
      id: 6,
      name: 'Giving Season',
      thumbnailPath: 'assets/prints/village.jpg',
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: Colors.blueAccent,
    ),
    const CardModel(
      id: 7,
      name: 'Birthday Gift',
      thumbnailPath: 'assets/prints/marrybrown.png',
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: Colors.blueAccent,
    ),
    const CardModel(
      id: 8,
      name: 'Holly Jolly Socks',
      thumbnailPath: 'assets/prints/samaki.jpg',
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: Colors.blueAccent,
    ),
  ];
}
