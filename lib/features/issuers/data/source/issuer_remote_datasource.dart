import 'package:dartz/dartz.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/helpers/app_exception.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
import '../../../../core/http/api_provider.dart';
import '../dto/issuer_dto.dart';
import '../model/issuer_model.dart';
import 'issuer_datasource.dart';
import 'issuer_local_datasource.dart';

class IssuerRemoteDatasource extends IssuerDatasource {
  IssuerRemoteDatasource(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, IssuerModel>> createOne({ required IssuerModel request, }) async {
    final response = await _api.post( Endpoints.issuersPath, { 'data': request.toRequest(), }, );

    return response.when(
      success: (success) async {
        final responseDto = IssuerDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final IssuerModel issuer = responseDto.content.toModel();
        return Right(issuer);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, IssuerModel>> deleteOne( {required String id}) async {
    late IssuerModel issuer;
    final findIssuer = await getOne(id: id);
    findIssuer.fold((l) {}, (r) {
      issuer = r;
    });

    final response = await _api.delete( "${Endpoints.issuersPath}/$id", );

    return response.when(
      success: (success) async {
        return Right(issuer);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, List<IssuerModel>>> getAll() async {
    final response = await _api.post(Endpoints.issuersPath, {
      'data': {
        "filters": [],
        "sorts": [],
        "page": 0,
        "size": 10
      }
    });

    return response.when(
      success: (success) async {
        final List<dynamic> content = success['content'];
        final List<IssuerModel> issuers = content.map((issuer) => IssuerModel.fromJson(issuer)).toList();

        //TODO: Implement local datasource
        // IssuerLocalDatasource localDatasource = IssuerLocalDatasource();
        // for (var issuer in issuers) {
        //   localDatasource.createOne(request: issuer);
        // }

        return Right(issuers);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, IssuerModel>> getOne({ required String id, }) async {
    final response = await _api.get( "${Endpoints.issuersPath}/$id", );

    return response.when(
      success: (success) async {
        final responseDto = IssuerDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final IssuerModel issuer = responseDto.content.toModel();
        return Right(issuer);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, IssuerModel>> updateOne( {required String id, required IssuerModel request}) async {
    final response = await _api.put( "${Endpoints.issuersPath}/$id",
      {
        'data': request.toRequest(),
      },
    );

    return response.when(
      success: (success) async {
        final responseDto = IssuerDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final IssuerModel issuer = responseDto.content.toModel();
        return Right(issuer);
      },
      error: (error) {
        return Left(error);
      },
    );
  }
}
