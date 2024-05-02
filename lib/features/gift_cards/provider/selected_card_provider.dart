import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/model/giftcard_theme_model.dart';
import '../repository/giftcard_theme_repository.dart';

part 'selected_card_provider.g.dart';

@riverpod
class SelectedCard extends _$SelectedCard {
  int allCardsCount = 0;
  int cardId = 0;

  @override
  Future<GiftcardThemeModel> build() async {
    final cardRepository = ref.watch(giftcardThemeRepositoryProvider);
    cardId = ref.watch(selectedCardIdProvider);
    allCardsCount = (await cardRepository.getAllCards()).length;

    return await cardRepository.getCard(cardId);
  }

  void nextCard() {
    ref.read(selectedCardIdProvider.notifier).setSelectedCardId(
          cardId >= allCardsCount ? 1 : cardId + 1,
        );
  }

  void prevCard() {
    ref.read(selectedCardIdProvider.notifier).setSelectedCardId(
          cardId <= 1 ? allCardsCount : cardId - 1,
        );
  }
}

@riverpod
class SelectedCardId extends _$SelectedCardId {
  @override
  int build() {
    return 0;
  }

  void setSelectedCardId(int cardId) {
    state = cardId;
  }
}
