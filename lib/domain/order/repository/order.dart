import 'package:dartz/dartz.dart';
import 'package:flutter_assignment_y4_s1/data/order/models/add_to_cart_req.dart';
import 'package:flutter_assignment_y4_s1/data/order/models/order_registration_req.dart';

abstract class OrderRepository {
  Future<Either> addToCart(AddToCartReq addToCartReq);
  Future<Either> getCartProducts();
  Future<Either> removeCartProduct(String id);
  Future<Either> orderRegistration(OrderRegistrationReq order);
  Future<Either> getOrders();
}
