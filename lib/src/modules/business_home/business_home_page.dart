import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/modules/business_raffles/business_raffles_page.dart';
import 'package:sorte_todo_dia/src/shared/widget/business_bottom_bar.dart';
import 'body_business_home_page.dart';

class BusinessHomePage extends StatefulWidget {
  const BusinessHomePage({super.key});

  @override
  State<BusinessHomePage> createState() => _BusinessHomePageState();
}

class _BusinessHomePageState extends State<BusinessHomePage> {
  int currentIndex = 0;

  final List<Widget> content = [
    const BodyBusinessHomePage(),
    const BusinessRafflesPage(), //Trocar por scanner
    const BusinessRafflesPage()
  ];

  List<String> appBarTitle = [
    'Home',
    'Scanner',
    'Sorteios',
  ];

  void changePage(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(
                Icons.person_outlined,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/business-config');
              },
            ),
          ),
        ],
        title: Text(
          appBarTitle[currentIndex],
        ),
      ),
      body: content[currentIndex],
      bottomNavigationBar: BusinessBottomBar(
        currentIndex: currentIndex,
        onDestinationSelected: changePage,
      ),
    );
  }
}
