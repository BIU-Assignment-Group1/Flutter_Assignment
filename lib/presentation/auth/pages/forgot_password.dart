import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/common/bloc/button/button_state.dart';
import 'package:flutter_assignment_y4_s1/common/bloc/button/button_state_cubit.dart';
import 'package:flutter_assignment_y4_s1/common/helper/navigator/app_navigator.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/button/basic_reactive_button.dart';
import 'package:flutter_assignment_y4_s1/domain/auth/usecases/send_password_reset_email.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/enter_password.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/password_reset_email.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: BlocProvider(
        create: (context) => ButtonStateCubit(),
        child:  BlocListener<ButtonStateCubit,ButtonState>(
            listener: (context, state) {
              if (state is ButtonFailureState){
                var snackbar = SnackBar(content: Text(state.errorMessage),behavior: SnackBarBehavior.floating,);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }

              if (state is ButtonSuccessState) {
                AppNavigator.push(context, const PasswordResetEmailPage());
              }
            },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 40
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _siginText(),
                const SizedBox(height: 20,),
                _emailField(),
                const SizedBox(height: 20,),
                _continueButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _siginText() {
    return const Text(
      'Forgot Password',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _emailField() {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        hintText: 'Enter Email'
      ),
    );
  }

  Widget _continueButton() {
    return Builder(
      builder: (context) {
        return BasicReactiveButton(
          onPressed: (){
            context.read<ButtonStateCubit>().execute(
              usecase: SendPasswordResetEmailUseCase(),
              params: _emailCon.text
            );
          },
          title: 'Continue'
        );
      }
    );
  }
}