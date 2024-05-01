import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pages/vouchers/carddesign/providers/search_query_provider.dart';

class CustomSearchBar extends ConsumerWidget {
  final TextEditingController _searchControl = TextEditingController();

  CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "E.g: Furniture, Supermarkets, Spa",
          prefixIcon: const Icon(
            Icons.search_sharp,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
          ),
        ),
        maxLines: 1,
        controller: _searchControl,
        onChanged: ref.read(searchQueryProvider.notifier).onChange,
      ),
    );
  }
}