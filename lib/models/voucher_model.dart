import 'dart:ui';

import 'package:zawadi/global/styles/app_colors.dart';

enum VoucherCategory {
  birthday,
  christmas,
  general,
  congratulation,
}

class VoucherModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<VoucherCategory> categories;

  const VoucherModel({
    required this.id,
    required this.name,
    required this.thumbnailPath,
    required this.categories,
    required this.bgColor,
  });

  static List<VoucherModel> sampleCards = [
    const VoucherModel(
      id: 1,
      name: 'Happy Birthday',
      thumbnailPath: 'assets/images/categories/health_spa_color.png',
      categories: [VoucherCategory.general, VoucherCategory.congratulation],
      bgColor: primaryHighContrast,
    ),
    const VoucherModel(
      id: 2,
      name: 'Giving Season',
      thumbnailPath: 'assets/images/categories/electronics_color.png',
      categories: [VoucherCategory.general, VoucherCategory.birthday],
      bgColor: primaryDark,
    ),
    const VoucherModel(
      id: 3,
      name: 'Birthday Gift',
      thumbnailPath: 'assets/images/categories/clothes_and_accessories_color.png',
      categories: [VoucherCategory.general, VoucherCategory.birthday],
      bgColor: kGrayC,
    ),
    const VoucherModel(
      id: 4,
      name: 'Holly Jolly Socks',
      thumbnailPath: 'assets/images/categories/baby_and_kids_bw.png',
      categories: [VoucherCategory.birthday, VoucherCategory.general],
      bgColor: kGreenColor,
    ),
  ];
}
