import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onDestinationSelected;

  const BottomBar({
    super.key,
    required this.currentIndex,
    this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        backgroundColor: const Color(0xFFF9FBFF),
        indicatorColor: const Color.fromARGB(166, 239, 225, 27),
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12,
          ),
        ),
      ),
      child: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: [
          // Home
          NavigationDestination(
            icon: Image.asset(
              'assets/img/home.png',
              height: 25,
            ),
            label: ('Home'),
          ),

          // raffle
          NavigationDestination(
            icon: Image.asset(
              'assets/img/ticket.png',
              height: 25,
            ),
            label: ('Sorteios'),
          ),

          // Prizes
          NavigationDestination(
            icon: Image.asset(
              'assets/img/trophy1.png',
              height: 25,
            ),
            label: ('Prêmios'),
          ),
        ],
      ),
    );
  }
}
