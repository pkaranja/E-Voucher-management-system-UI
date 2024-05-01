import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/features/gift_cards/provider/giftcard_provider.dart';
import '../../../../controllers/apiRequests.dart';
import '../../../../core/handlers/error_handler.dart';
import '../../../../core/presentation/widgets/app_bar_widget.dart';
import '../../../issuers/data/model/issuer_model.dart';
import '../../../issuers/presentation/widgets/issuer_vertical_card_grid.dart';

class ReceivedGiftcardsScreen extends ConsumerStatefulWidget {
  const ReceivedGiftcardsScreen({super.key});

  @override
  ConsumerState<ReceivedGiftcardsScreen> createState() => _ReceivedGiftcardsScreenState();
}

class _ReceivedGiftcardsScreenState extends ConsumerState<ReceivedGiftcardsScreen> {

  List<IssuerModel> issuersList = [];
  final ApiRequests apiRequests = ApiRequests();

  @override
  void initState() {
    super.initState();

    Future.microtask(() { ref.read(giftcardProvider.notifier).getAll(); });

    _fetchIssuers();
  }

  Future<void> _fetchIssuers() async {
    Map<String, dynamic> issuersResponseData;

    try {
      issuersResponseData = await apiRequests.fetchIssuers( categoryId: 3);

      setState(() {
        issuersList.clear();
        final int numberOfElements = issuersResponseData['numberOfElements'];
        final int pageNumber = issuersResponseData['pageable']['pageNumber'];
        final int pageSize = issuersResponseData['pageable']['pageSize'];
        final List<dynamic> issuers = issuersResponseData['content'];

        issuersList.addAll(issuers.map((issuer) => IssuerModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      handleError(error, "Could not fetch gift cards", stackTrace: stackTrace);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Text(
              'Received gift cards',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: IssuerVerticalCardGrid(issuersList: issuersList),
          )
        ],
      ),
    );
  }
}