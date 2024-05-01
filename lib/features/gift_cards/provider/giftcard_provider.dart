import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/state/giftcard_state.dart';
import '../repository/giftcard_repository.dart';
import '../repository/giftcard_repository_impl.dart';

final giftcardProvider = StateNotifierProvider<GiftcardNotifier, GiftcardState>((ref) {
  final repository = ref.read(giftcardRepositoryProvider);
  return GiftcardNotifier(repository);
});


class GiftcardNotifier extends StateNotifier<GiftcardState> {
  GiftcardNotifier(this.repository) : super(GiftcardState());
  final GiftcardRepository repository;

  Future<void> getAll() async { state = state.copyWith(isLoading: true, giftcards: []);
    final response = await repository.getAll();
    response.fold(
        (l) => state = state.copyWith(isLoading: false, giftcards: []),
        (r) => state = state.copyWith(isLoading: false, giftcards: r),
    );
  }

  Future<void> getReceived() async { state = state.copyWith(isLoading: true, giftcards: []);
    final response = await repository.getReceived();
    response.fold(
          (l) => state = state.copyWith(isLoading: false, giftcards: []),
          (r) => state = state.copyWith(isLoading: false, giftcards: r),
    );
  }

  Future<void> getPurchased() async { state = state.copyWith(isLoading: true, giftcards: []);
    final response = await repository.getPurchased();
    response.fold(
          (l) => state = state.copyWith(isLoading: false, giftcards: []),
          (r) => state = state.copyWith(isLoading: false, giftcards: r),
    );
  }

  void getOne(String id) async {
    state = state.copyWith(isLoading: true, giftcard: null);
    final response = await repository.getOne(id: id);
    response.fold(
          (l) => state = state.copyWith(isLoading: false, giftcard: null),
          (r) => state = state.copyWith(isLoading: false, giftcard: r),
    );
  }
}