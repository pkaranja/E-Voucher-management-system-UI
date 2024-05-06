
import 'package:dartz/dartz.dart';
import 'package:zawadi/features/payment/data/source/payment_datasource.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/helpers/app_exception.dart';
import '../../../../core/http/api_provider.dart';
import '../dto/transaction_response_dto.dart';
import '../model/transaction_model.dart';

class TransactionRemoteDatasource extends PaymentDatasource {
  TransactionRemoteDatasource(this._api);

  final ApiProvider _api;

  @override
  Future<Either<AppException, TransactionResponseDto>> createOne( { required TransactionModel request,} ) async {
    final response = await _api.post(Endpoints.transactionsPath, { 'data': request.toRequest(),},);

    return response.when(
      success: (success) async {
        final responseDto = TransactionResponseDto.fromJson( success as Map<String, dynamic>,);

        return Right(responseDto);
      },
      error: (error) {
        return Left(error);
      },
    );
  }
}