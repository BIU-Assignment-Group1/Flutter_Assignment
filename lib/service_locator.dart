
import 'package:flutter_assignment_y4_s1/data/auth/repository/auth_repository_impl.dart';
import 'package:flutter_assignment_y4_s1/data/auth/source/auth_firebase_service.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/repository/auth.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/get_ages.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/get_user.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/is_logged_in.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/send_password_reset_email.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/siginup.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/signin.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // Services
  
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  // sl.registerSingleton<CategoryFirebaseService>(
  //   CategoryFirebaseServiceImpl()
  // );

  //  sl.registerSingleton<ProductFirebaseService>(
  //   ProductFirebaseServiceImpl()
  // );

  // sl.registerSingleton<OrderFirebaseService>(
  //   OrderFirebaseServiceImpl()
  // );


  // Repositories

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  // sl.registerSingleton<CategoryRepository>(
  //   CategoryRepositoryImpl()
  // );

  // sl.registerSingleton<ProductRepository>(
  //   ProductRepositoryImpl()
  // );

  // sl.registerSingleton<OrderRepository>(
  //   OrderRepositoryImpl()
  // );


  // Usecases

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<GetAgesUseCase>(
    GetAgesUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase()
  );

  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase()
  );

  sl.registerSingleton<IsLoggedInUseCase>(
    IsLoggedInUseCase()
  );

  sl.registerSingleton<GetUserUseCase>(
    GetUserUseCase()
  );

  // sl.registerSingleton<GetCategoriesUseCase>(
  //   GetCategoriesUseCase()
  // );

  // sl.registerSingleton<GetTopSellingUseCase>(
  //   GetTopSellingUseCase()
  // );

  // sl.registerSingleton<GetNewInUseCase>(
  //   GetNewInUseCase()
  // );

  // sl.registerSingleton<GetProductsByCategoryIdUseCase>(
  //   GetProductsByCategoryIdUseCase()
  // );

  // sl.registerSingleton<GetProductsByTitleUseCase>(
  //   GetProductsByTitleUseCase()
  // );

  // sl.registerSingleton<AddToCartUseCase>(
  //   AddToCartUseCase()
  // );

  // sl.registerSingleton<GetCartProductsUseCase>(
  //   GetCartProductsUseCase()
  // );

  // sl.registerSingleton<RemoveCartProductUseCase>(
  //   RemoveCartProductUseCase()
  // );

  // sl.registerSingleton<OrderRegistrationUseCase>(
  //   OrderRegistrationUseCase()
  // );

  // sl.registerSingleton<AddOrRemoveFavoriteProductUseCase>(
  //   AddOrRemoveFavoriteProductUseCase()
  // );

  // sl.registerSingleton<IsFavoriteUseCase>(
  //   IsFavoriteUseCase()
  // );

  //  sl.registerSingleton<GetFavortiesProductsUseCase>(
  //   GetFavortiesProductsUseCase()
  // );

  // sl.registerSingleton<GetOrdersUseCase>(
  //   GetOrdersUseCase()
  // );
}

