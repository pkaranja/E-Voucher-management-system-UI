import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/state/category_state.dart';
import '../repository/category_repository.dart';
import '../repository/category_repository_impl.dart';

final categoryProvider = StateNotifierProvider<CategoryNotifier, CategoryState>((ref) {
  final repository = ref.read(categoryRepositoryProvider);
  return CategoryNotifier(repository);
});

class CategoryNotifier extends StateNotifier<CategoryState> {
  CategoryNotifier(this.repository) : super(CategoryState());
  final CategoryRepository repository;

  Future<void> getAll() async { state = state.copyWith(isLoading: true, categories: []);
    final response = await repository.getAll();
    response.fold(
          (l) => state = state.copyWith(isLoading: false, categories: []),
          (r) { state = state.copyWith(isLoading: false, categories: r);
      },
    );
  }

  void getOne(String id) async {
    state = state.copyWith(isLoading: true, category: null);
    final response = await repository.getOne(id: id);
    response.fold(
          (l) => state = state.copyWith(isLoading: false, category: null),
          (r) => state = state.copyWith(isLoading: false, category: r),
    );
  }
}