import 'package:flutter/material.dart';

class RaffleNumberContainer extends StatelessWidget {
  const RaffleNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return //Text
        Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: Text(
          'Nº 44.123',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
