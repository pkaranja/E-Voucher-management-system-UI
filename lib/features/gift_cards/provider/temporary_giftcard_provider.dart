import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/model/temporary_card_model.dart';

part 'temporary_giftcard_provider.g.dart';

@riverpod
class TemporaryGiftcard extends _$TemporaryGiftcard {
  @override
  SelectedCardModel? build() {
    return SelectedCardModel();
  }

  void setTemporaryGiftcard(SelectedCardModel? giftcard) async {
    if (state == giftcard) {
      state = null;
    } else {
      state = giftcard;
    }
  }

  void setGiftcardIssuerId(String? issuerId) async {
    state = state?.copyWith(issuerId: issuerId);
  }

  void setGiftcardThemeId(int? themeId) async {
    state = state?.copyWith(themeId: themeId);
  }

  void setGiftcardTitle(String? title) async {
    state = state?.copyWith(title: title);
  }

  void setGiftcardAmount(int? amount) async {
    state = state?.copyWith(amount: amount);
  }

  void setGiftcardRecipient(PhoneContact? recipient) async {
    state = state?.copyWith(recipient: recipient);
  }

  void setGiftcardMessage(String? message) async {
    state = state?.copyWith(message: message);
  }
}