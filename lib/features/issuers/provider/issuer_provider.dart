import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/state/issuer_state.dart';
import '../repository/issuer_repository.dart';
import '../repository/issuer_repository_impl.dart';

final issuerProvider = StateNotifierProvider<IssuerNotifier, IssuerState>((ref) {
  final repository = ref.watch(issuerRepositoryProvider);
  return IssuerNotifier(repository);
});


class IssuerNotifier extends StateNotifier<IssuerState> {
  IssuerNotifier(this.repository) : super(IssuerState());
  final IssuerRepository repository;

  Future<void> getAll() async { state = state.copyWith(isLoading: true, issuers: []);
    final response = await repository.getAll();
    response.fold(
        (l) => state = state.copyWith(isLoading: false, issuers: []),
        (r) => state = state.copyWith(isLoading: false, issuers: r),
    );
  }

  void getOne(String id) async {
    state = state.copyWith(isLoading: true, issuer: null);
    final response = await repository.getOne(id: id);
    response.fold(
          (l) => state = state.copyWith(isLoading: false, issuer: null),
          (r) => state = state.copyWith(isLoading: false, issuer: r),
    );
  }
}