import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' show getApplicationSupportDirectory;
import 'package:zawadi/features/categories/data/database/category_db.dart';
import 'package:zawadi/features/gift_cards/data/database/giftcard_db.dart';
import 'package:zawadi/features/issuers/data/database/issuer_db.dart';

late Isar isarDB;

Future<void> isarInit() async {
  final dir = await getApplicationSupportDirectory();
  isarDB = await Isar.open(
    [CategoryDBSchema, IssuerDBSchema, GiftcardDBSchema],
    directory: dir.path,
    inspector: !kReleaseMode,
  );
}