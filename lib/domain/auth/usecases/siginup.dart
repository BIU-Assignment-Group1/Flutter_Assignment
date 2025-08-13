import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/data/auth/models/user_creation_req.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/repository/auth.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
