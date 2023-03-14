import 'package:flutter/material.dart';

class CongratulationsButton extends StatelessWidget {
  const CongratulationsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Gradient border
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
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

      // Image and text
      child: Material(
        elevation: 6,
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.black12,
          onTap: () => Navigator.pushNamed(context, '/my-prize-details'),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image
              Ink.image(
                image: const AssetImage('assets/img/prize_btn.jpg'),
                width: 140,
                height: 140,
              ),

              // Vertical divider
              const SizedBox(
                height: 130,
                child: VerticalDivider(
                  thickness: 1,
                ),
              ),

              // Text
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Parabéns!',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cique aqui para ver seu novo prêmio!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
