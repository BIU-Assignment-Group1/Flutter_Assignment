import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/common/helper/navigator/app_navigator.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/button/basic_app_button.dart';
import 'package:flutter_assignment_y4_s1/data/auth/models/user_creation_req.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/signin.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20,),
            _firstNameField(context),
            const SizedBox(height: 20,),
            _lastNameField(context),
            const SizedBox(height: 20,),
            _emailField(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context){
    return const Text(
      'Create Account',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(
      controller: _firstNameCon,
      decoration: InputDecoration(
        hintText: 'Firstname'
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      controller: _lastNameCon,
      decoration: InputDecoration(
        hintText: 'Lastname'
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: InputDecoration(
        hintText: 'Email'
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _passwordCon,
      decoration: InputDecoration(
        hintText: 'Password'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context,
          GenderAndAgeSelectionPage(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              email: _emailCon.text,
              lastName: _lastNameCon.text,
              password: _passwordCon.text
            ),
          )
        );
      },
      title: 'Continue'
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:  [
          TextSpan(
            text: "Do you have an account? ",
            style: const TextStyle(
              color: Colors.white
            )
          ),
          TextSpan(
            text: 'Signin',
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context, SigninPage());
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