import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/common/helper/navigator/app_navigator.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/forgot_password.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _forgotPassword(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context){
    return const Text(
      'Sign In',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: const InputDecoration(
        hintText: 'Enter Password'
      ),
    );
  }

   Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        // AppNavigator.push(
        //   context, 
        //   EnterPasswordPage(
        //     signinReq: UserSigninReq(
        //       email: _emailCon.text,
        //     ),
        //   )
        // );
      },
      title: 'Continue'
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:  [
          TextSpan(
            text: "Forgot Password? ",
            style: const TextStyle(
              color: Colors.white
            )
          ),
          TextSpan(
            text: 'Reset',
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, ForgetPasswordPage());
            } ,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            )
          )
        ]
      ),
    );
  }



}