import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/voucher_model.dart';

part 'giftcard_theme_repository.g.dart';

@riverpod
GiftcardThemeRepository giftcardThemeRepository(GiftcardThemeRepositoryRef ref) => GiftcardThemeRepository();

class GiftcardThemeRepository {
  Future<List<GiftcardThemeModel>> getAllCards() async {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () {
        return GiftcardThemeModel.sampleCards;
      },
    );
  }

  Future<GiftcardThemeModel> getCard(int modelId) async {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () {
        return GiftcardThemeModel.sampleCards.where((card) => card.id == modelId).first;
      },
    );
  }
}
