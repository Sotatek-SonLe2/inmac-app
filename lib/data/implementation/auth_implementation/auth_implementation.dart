import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:inmac_app/config/failures/failure.dart';
import 'package:inmac_app/data/datasource/local/get_storage_datasource.dart';
import 'package:inmac_app/data/datasource/local/secure_storage.dart';
import 'package:inmac_app/data/datasource/remote/auth_datasource/auth_datasource.dart';
import 'package:inmac_app/domain/repository/auth_repository/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';


// @Injectable(as: IAuthRepository)
class AuthImplementation extends IAuthRepository {
  final SecureStorage _secureStorage;
  final AuthDataSource _authDataSource;
  final SharedPreferences _sharedPreferences;

  // ignore: unused_field
  final GetStorageDataSource _getStorageDataSource;

  AuthImplementation(this._secureStorage, this._authDataSource,
      this._getStorageDataSource, this._sharedPreferences);

  @override
  Future<Either<Failure, bool>> logOut() async {
    try {
      await _secureStorage.logOut();
      return const Right(true);
    } catch (e) {
      return Left(FailureMessage.fromException(e));
    }
  }

  @override
  Future<Either<Failure, bool>> isFirstOpenApp(String account) async {
    try {
      await _secureStorage.makeFirstOpen(account);
      return const Right(true);
    } catch (e) {
      return Left(FailureMessage.fromException(e));
    }
  }

}
