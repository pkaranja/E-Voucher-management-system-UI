import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class SelectedCardModel {
  int themeId;
  String title;
  int amount;
  PhoneContact? recipient;
  String message;
  String issuerId;

   SelectedCardModel({
     this.themeId = 1,
     this.title = 'Sample gift card title',
     this.amount = 10000,
     this.recipient,
     this.message = 'This is a sample gift card message, please create your own personalized message below!',
     this.issuerId = '',
  });

  SelectedCardModel copyWith({ int? themeId, String? title, int? amount, PhoneContact? recipient, String? message, String? issuerId}) {
    return SelectedCardModel(
      themeId: themeId ?? this.themeId,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      recipient: recipient ?? this.recipient,
      message: message ?? this.message,
      issuerId: issuerId ?? this.issuerId,
    );
  }


  @override
  String toString() {
    return 'Temporary card {themeId: $themeId, title: $title, amount: $amount, recipient: $recipient, message: $message,  issuerid: $issuerId}';
  }
}