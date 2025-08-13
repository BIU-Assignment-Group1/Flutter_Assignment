import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/domain/order/repository/order.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class GetOrdersUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return sl<OrderRepository>().getOrders();
  }
}
