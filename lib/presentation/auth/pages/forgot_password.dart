import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/common/helper/navigator/app_navigator.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/enter_password.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
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
            _emailField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context){
    return const Text(
      'Forgot Password',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context, 
          EnterPasswordPage()
        );
      },
      title: 'Continue'
    );
  }


}