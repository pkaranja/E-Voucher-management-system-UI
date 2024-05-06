import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/config/constants.dart';
import 'package:zawadi/features/payment/data/dto/transaction_response_dto.dart';
import 'package:zawadi/features/payment/data/model/transaction_model.dart';
import 'package:zawadi/features/payment/repository/payment_repository.dart';
import '../../../core/helpers/app_exception.dart';
import '../../../core/http/api_provider.dart';
import '../data/source/payment_datasource.dart';
import '../data/source/transaction_remote_datasource.dart';


final paymentDatasourceProvider = Provider<PaymentDatasource>((ref) {
  final api = ref.read(apiProvider(Endpoints().baseUrl));
  return TransactionRemoteDatasource(api);
});

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  final datasource = ref.watch(paymentDatasourceProvider);
  final repository = PaymentRepositoryImpl(datasource);
  return repository;
});

class PaymentRepositoryImpl extends PaymentRepository {
  PaymentRepositoryImpl(this.datasource);
  final PaymentDatasource datasource;

  @override
  Future<Either<AppException, TransactionResponseDto>> createOne( {required TransactionModel request}) {
    return datasource.createOne(request: request);
  }
}
