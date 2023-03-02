import 'package:flutter/material.dart';

import '../../shared/widget/bottom_bar.dart';
import '../my_prizes/my_prizes_page.dart';
import '../raffles/raffles_page.dart';
import 'body_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> content = [
    const BodyHomePage(),
    const RafflePage(),
    const MyPrizesPage(),
  ];

  List<String> appBarTitle = [
    'Home',
    'Sorteios',
    'Prêmios',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(
                Icons.person_outlined,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/config');
              },
            ),
          ),
        ],
        title: Text(
          appBarTitle[currentIndex],
        ),
      ),
      body: content[currentIndex],
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onDestinationSelected: changePage,
      ),
    );
  }
}
