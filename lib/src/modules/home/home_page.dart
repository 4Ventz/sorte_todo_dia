import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person_outlined,
              size: 30,
            ),
          ),
        ],
        title: const Text(
          'Home',
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        color: const Color(0xFFCCCCCC),
      ),
    );
  }
}
