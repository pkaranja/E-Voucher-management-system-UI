import 'package:dartz/dartz.dart';
import 'package:zawadi/features/payment/data/dto/transaction_response_dto.dart';
import '../../../core/helpers/app_exception.dart';
import '../data/model/transaction_model.dart';

abstract class PaymentRepository {
  Future<Either<AppException, TransactionResponseDto>> createOne({
    required TransactionModel request,
  });
}