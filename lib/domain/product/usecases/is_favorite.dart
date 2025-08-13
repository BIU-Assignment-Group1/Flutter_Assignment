import 'package:flutter_assignment_y4_s1/core/usecase/usecase.dart';
import 'package:flutter_assignment_y4_s1/domain/product/repository/product.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }
}
