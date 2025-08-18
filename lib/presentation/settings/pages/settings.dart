import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/common/helper/navigator/app_navigator.dart';
import 'package:flutter_assignment_y4_s1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_assignment_y4_s1/presentation/auth/pages/siginin.dart';
import 'package:flutter_assignment_y4_s1/presentation/home/bloc/user_info_display_cubit.dart';
import 'package:flutter_assignment_y4_s1/presentation/home/bloc/user_info_display_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/my_orders_tile.dart';
import '../widgets/my_favorties_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserInfoDisplayCubit(),
      child: BlocListener<UserInfoDisplayCubit, UserInfoDisplayState>(
        listener: (context, state) {
          if (state is UserLoggedOut) {
            AppNavigator.pushAndRemove(context, SigninPage());
          }
        },
        child: Scaffold(
          appBar: const BasicAppbar(title: Text('Settings')),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const MyFavortiesTile(),
                const SizedBox(height: 15),
                const MyOrdersTile(),
                const SizedBox(height: 30),
                // Wrap button in Builder so it has correct context
                Builder(
                  builder: (buttonContext) {
                    return ElevatedButton(
                      onPressed: () {
                        buttonContext.read<UserInfoDisplayCubit>().logout();
                      },
                      child: const Text('Logout'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
