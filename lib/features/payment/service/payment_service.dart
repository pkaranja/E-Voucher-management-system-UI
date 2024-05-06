import 'package:dartz/dartz.dart';
import 'package:zawadi/features/payment/data/dto/transaction_response_dto.dart';
import 'package:zawadi/features/payment/data/model/transaction_model.dart';

import '../../../core/config/constants.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/source/payment_datasource.dart';


class PaymentService extends PaymentDatasource {
  PaymentService(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, TransactionResponseDto>> createOne({ required TransactionModel request, }) async {
    final response = await _api.post( Endpoints.transactionsPath,{ 'data': request.toRequest(), }, );

    return response.when(
      success: (success) async {
        final responseDto = TransactionResponseDto.fromJson(success as Map<String, dynamic>,);
        return Right(responseDto);
      },
      error: (error) {
        return Left(error);
      },
    );
  }
}