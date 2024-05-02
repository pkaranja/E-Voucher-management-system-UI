import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:zawadi/features/gift_cards/provider/temporary_giftcard_provider.dart';
import '../../../../core/presentation/widgets/cached_image_widget.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/router_utils.dart';
import '../../../gift_cards/provider/selected_card_provider.dart';
import '../../data/model/issuer_model.dart';

class IssuerHorizontalCard extends ConsumerWidget {
  const IssuerHorizontalCard({
    Key? key, // Fix super.key to Key? key
    required this.issuer,
  }) : super(key: key);

  final IssuerModel issuer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(temporaryGiftcardProvider);
    ref.watch(selectedCardIdProvider);

    return Column(
      children: [
        GestureDetector(
          onTap: (){
            ref.read(selectedCardIdProvider.notifier).setSelectedCardId(1);
            ref.read(temporaryGiftcardProvider.notifier).setGiftcardIssuerId(issuer.id);

            GoRouter.of(context).goNamed(
              APP_PAGE.issuer.routeName,
              pathParameters: {'issuerId': issuer.id}
            );
        },
        child: SizedBox(
              width: 244.w, // Set width here
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  height: 165.h,
                  color: themeAlmostWhiteColor,
                  child: Stack(
                    children: [
                      // Image from URL with error and loading builders
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: CachedImage(
                          imageUrl: issuer.logo,
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                          height: double.infinity,
                        )
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 15.w, bottom: 12.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                issuer.name,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.edit_location),
                                  SizedBox(width: 4.w),
                                  Expanded(
                                    child: Text(
                                      issuer.address!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ),
      ],
    );
  }
}