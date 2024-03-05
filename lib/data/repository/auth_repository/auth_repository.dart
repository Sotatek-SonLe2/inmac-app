import 'package:dartz/dartz.dart';
import 'package:inmac_app/config/failures/failure.dart';

abstract class IAuthRepository {

  Future<Either<Failure, bool>> logOut();

  Future<Either<Failure, bool>> isFirstOpenApp(String account);
}
