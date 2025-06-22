import 'package:flutter/material.dart';
import 'package:flutter_assignment_y4_s1/presentation/home/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 24,),
            // SearchField(),
            // SizedBox(height: 24,),
            // Categories(),
            // SizedBox(height: 24,),
            // TopSelling(),
            // SizedBox(height: 24,),
            // NewIn()
          ],
        ),
      ),
    );
  }
}