import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/data/auth/models/user_signin_req.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/repository/auth.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class SigninUseCase implements UseCase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
