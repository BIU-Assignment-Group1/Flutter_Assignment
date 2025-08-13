import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/data/order/models/add_to_cart_req.dart';
import 'package:flutter_assignment_y4_s1/domain/order/repository/order.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class AddToCartUseCase implements UseCase<Either, AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }
}
