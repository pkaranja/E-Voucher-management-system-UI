// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_card_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedCardHash() => r'36ac725cc3a7534c4fc501dad17958f3ad73ab6a';

/// See also [SelectedCard].
@ProviderFor(SelectedCard)
final selectedCardProvider =
    AutoDisposeAsyncNotifierProvider<SelectedCard, GiftcardThemeModel>.internal(
  SelectedCard.new,
  name: r'selectedCardProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedCardHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCard = AutoDisposeAsyncNotifier<GiftcardThemeModel>;
String _$selectedCardIdHash() => r'2ec71341b7c1dcd494209db7970e4423f6bf7700';

/// See also [SelectedCardId].
@ProviderFor(SelectedCardId)
final selectedCardIdProvider =
    AutoDisposeNotifierProvider<SelectedCardId, int>.internal(
  SelectedCardId.new,
  name: r'selectedCardIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCardIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCardId = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
