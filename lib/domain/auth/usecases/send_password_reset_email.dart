import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/repository/auth.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String ? params}) async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }

}