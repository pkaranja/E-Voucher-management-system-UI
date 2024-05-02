import 'dart:ui';

import 'package:flutter/material.dart';

enum CardCategory {
  birthday,
  christmas,
  general,
  congratulation,
}

class GiftcardThemeModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final Color fontColor;
  final List<CardCategory> categories;

  const GiftcardThemeModel({
    required this.id,
    required this.name,
    required this.thumbnailPath,
    required this.categories,
    required this.bgColor,
    required this.fontColor,
  });

  static List<GiftcardThemeModel> sampleCards = [
    const GiftcardThemeModel(
      id: 1,
      name: 'Dark Blue Theme',
      thumbnailPath: 'assets/images/cardthemes/dark_blue_box.png',
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: Color(0xFF7B8092),
      fontColor: Color(0xFFEEEFF1),
    ),
    const GiftcardThemeModel(
      id: 2,
      name: 'From me to you',
      thumbnailPath: 'assets/images/cardthemes/green_ribbon.png',
      categories: [CardCategory.general],
      bgColor: Color(0xFF025049),
      fontColor: Color(0xFFF8F1E1),
    ),
    const GiftcardThemeModel(
      id: 3,
      name: 'Rabbits',
      thumbnailPath: 'assets/images/cardthemes/rabbits.png',
      categories: [CardCategory.general],
      bgColor: Color(0xFFF5F4F1),
      //bgColor: Color(0xFF979797),
      fontColor: Color(0xFF100F0D)
    ),
    const GiftcardThemeModel(
        id: 4,
        name: 'Yellow Theme',
        thumbnailPath: 'assets/images/cardthemes/yellow_box.png',
        categories: [CardCategory.general],
        bgColor: Color(0xFFE9CF6F),
        fontColor: Color(0xFF944C1A)
    ),
    const GiftcardThemeModel(
        id: 5,
        name: 'Brown Theme',
        thumbnailPath: 'assets/images/cardthemes/brown_box.png',
        categories: [CardCategory.general],
        bgColor: Color(0xFFF5F7E2),
        fontColor: Color(0xFF444444)
    ),
  ];
}
