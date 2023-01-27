import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFE6A519),
                Color(0xFFF6D006),
                Color(0xFFFFEA20),
                Color(0xFFF6D006),
                Color(0xFFE6A519),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/Logo.png'),
                  const Text(
                    'Sorte Todo Dia',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
