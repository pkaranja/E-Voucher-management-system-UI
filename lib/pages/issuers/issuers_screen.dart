import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/global/widgets/issuer_vertical_card_grid.dart';

import '../../controllers/apiRequests.dart';
import '../../global/handlers/error_handler.dart';
import '../../global/widgets/app_bar.dart';
import '../../models/issuers_model.dart';

class IssuersScreen extends StatefulWidget {
  const IssuersScreen({Key? key, this.title, required this.issuerListType, this.q, this.categoryId}) : super(key: key);

  final String? title;
  final IssuerListType issuerListType;
  final String? q;
  final int? categoryId;

  @override
  State<IssuersScreen> createState() => _IssuersScreenState();
}

class _IssuersScreenState extends State<IssuersScreen> {

  List<IssuersModel> issuersList = [];
  final ApiRequests apiRequests = ApiRequests();

  @override
  void initState() {
    super.initState();
    _fetchIssuers();
  }

  Future<void> _fetchIssuers() async {
    Map<String, dynamic> issuersResponseData;

    try {
      issuersResponseData = await apiRequests.fetchIssuers( categoryId: widget.categoryId ?? 0);

      setState(() {
        issuersList.clear();
        final int numberOfElements = issuersResponseData['numberOfElements'];
        final int pageNumber = issuersResponseData['pageable']['pageNumber'];
        final int pageSize = issuersResponseData['pageable']['pageSize'];
        final List<dynamic> issuers = issuersResponseData['content'];

        issuersList.addAll(issuers.map((issuer) => IssuersModel.fromJson(issuer)));
      });
    } catch (error, stackTrace) {
      handleError(error, "Could not fetch issuers", stackTrace: stackTrace);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QrooAppBar(
        title1: 'Zawadi',
        title2: ' Digital',
        hasBackButton: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Text(
              widget.title ?? 'Issuers',
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