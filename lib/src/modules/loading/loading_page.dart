import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
      body: SafeArea(
        // Gradient
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

          // Text and Icon
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/Logo.png'),
                  Text(
                    'Sorte Todo Dia!',
                    style: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              // SizedBox
              const SizedBox(
                height: 16,
              ),

              // Loading animation
              Container(
                height: 5,
                width: 22.5,
                color: const Color(0xFF000000),
              )
            ],
          ),
        ),
      ),
    );
  }
}
