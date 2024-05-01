import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../models/voucher_model.dart';
import '../providers/filtered_cards_provider.dart';
import '../providers/search_query_provider.dart';
import '../providers/selected_card_category_provider.dart';
import '../providers/selected_card_provider.dart';
import '../widgets/custom_chip_widget.dart';
import '../widgets/custom_gift_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Gift Card'),
        ),
      ),
      //bottomNavigationBar: const CustomNavBar(index: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: const [
            SizedBox(height: 10.0),
            _SearchBar(),
            SizedBox(height: 20.0),
            _CategoryFilters(),
            SizedBox(height: 20.0),
            _CardGrid(),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends ConsumerWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          hintText: 'Search card',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: ref.read(searchQueryProvider.notifier).onChange,
      ),
    );
  }
}

class _CategoryFilters extends ConsumerWidget {
  const _CategoryFilters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);
    return SizedBox(
      height: 30,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            ...CardCategory.values
                .map(
                  (category) => CustomChips(
                    label: category.toString(),
                    isSelected: category == selectedCategory,
                    onTap: () {
                      ref
                          .read(selectedCategoryProvider.notifier)
                          .setSelectedCategory(category);
                    },
                  ),
                )
                .toList(growable: false),
            const SizedBox(width: 24),
          ]),
    );
  }
}

class _CardGrid extends ConsumerWidget {
  const _CardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final cards = ref.watch(filteredCardsProvider);

    ref.watch(selectedCardIdProvider);

    return cards.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (cards) => SizedBox(
        height: size.height * 0.60,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 10,
          ),
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {

              },
              child: CustomGiftCard(
                model: cards[index],
                width: size.width * 0.425, title: '', message: '',
              ),
            );
          },
        ),
      ),
      error: (e, s) => Center(child: Text('Failed to fetch card')),
    );
  }
}
