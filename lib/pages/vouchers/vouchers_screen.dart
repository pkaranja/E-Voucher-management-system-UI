import 'package:flutter/material.dart';
import 'package:zawadi/config/app_data.dart' as app_data;
import 'package:zawadi/config/custom_colors.dart';
import 'package:zawadi/pages/vouchers/components/vouchers_tile.dart';

import '../../global/widgets/app_bar.dart';

class VouchersScreen extends StatelessWidget {
  const VouchersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(
        title1: 'Zawadi',
        title2: ' Digital',
        hasBackButton: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (_, index) => VouchersTile(order: app_data.orders[index]),
        itemCount: app_data.orders.length,
      ),
    );
  }
}
