import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/category_model.dart';
import '../../provider/category_provider.dart';

class ListScreen extends ConsumerStatefulWidget {
  const ListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListScreenState();
}

class _ListScreenState extends ConsumerState<ListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(categoryProvider.notifier).getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoryProvider).categories;
    bool isLoading = ref.watch(categoryProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories List"),
      ),
      body: Wrap(
        children: [
          CategoriesListWidget(ref: ref, isLoading: isLoading, categories: categories),
        ],
      ),
    );
  }
}

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
    required this.ref,
    required this.isLoading,
    required this.categories,
  });

  final WidgetRef ref;
  final bool isLoading;
  final List<CategoryModel> categories;


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ref.read(categoryProvider.notifier).getAll(),
      child: isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  (categories[index].icon != "")
                      ? categories[index].icon
                      : "https://i.stack.imgur.com/34AD2.jpg",
                ),
              ),
              title: Text( '${categories[index].name}'),
              subtitle: Text(categories[index].name),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}