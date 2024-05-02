import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:zawadi/features/gift_cards/provider/search_query_provider.dart';
import 'package:zawadi/features/gift_cards/provider/selected_card_category_provider.dart';

import '../data/model/giftcard_theme_model.dart';
import '../repository/giftcard_theme_repository.dart';


part 'filtered_cards_provider.g.dart';

@riverpod
Future<List<GiftcardThemeModel>> filteredCards(FilteredCardsRef ref) async {
  final GiftcardThemeRepository cardRepository = ref.watch(giftcardThemeRepositoryProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  final searchQuery = ref.watch(searchQueryProvider);

  var allCard = await cardRepository.getAllCards();

  if (selectedCategory != null) {
    return allCard.where(
      (card) {
        return card.categories.any(
          (category) => category == selectedCategory,
        );
      },
    ).toList();
  }

  if (searchQuery.trim().isNotEmpty) {
    return allCard.where((card) {
      return card.name.toLowerCase().contains(
            searchQuery.toLowerCase(),
          );
    }).toList();
  }
  return allCard;
}
