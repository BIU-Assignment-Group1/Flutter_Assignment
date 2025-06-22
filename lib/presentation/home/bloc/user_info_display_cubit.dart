import 'package:flutter_assignment_y4_s1/domain/auth/usecases/get_user.dart';
import 'package:flutter_assignment_y4_s1/presentation/home/bloc/user_info_display_state.dart';
import 'package:flutter_assignment_y4_s1/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoDisplayCubit extends Cubit<UserInfoDisplayState> {
  
  UserInfoDisplayCubit() : super(UserInfoLoading());

  void displayUserInfo() async {

    var returnedData = await sl<GetUserUseCase>().call();
    print('Fetching user info...');
    returnedData.fold(
      (error){
        print('User info fetch failed: $error');
        emit(
          LoadUserInfoFailure()
        );
      }, 
      (data){
        print('User info loaded: ${data.email}');
        emit(
          UserInfoLoaded(
            user: data
          )
        );
      }
    );
  }
}