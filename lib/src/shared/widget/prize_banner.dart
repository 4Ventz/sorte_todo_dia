import 'package:flutter/material.dart';

class PrizeBanner extends StatelessWidget {
  const PrizeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      alignment: Alignment.center,
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 4,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/xtudo1.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
