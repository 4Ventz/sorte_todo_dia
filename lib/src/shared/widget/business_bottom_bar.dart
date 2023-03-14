import 'package:flutter/material.dart';

class BusinessBottomBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onDestinationSelected;

  const BusinessBottomBar({
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

          // Scanner
          NavigationDestination(
            icon: Image.asset(
              'assets/img/qr_code_scanner.png',
              height: 25,
            ),
            label: ('Scanner'),
          ),

          // raffle
          NavigationDestination(
            icon: Image.asset(
              'assets/img/ticket.png',
              height: 25,
            ),
            label: ('Sorteios'),
          ),
        ],
      ),
    );
  }
}
