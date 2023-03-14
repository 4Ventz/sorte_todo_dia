import 'package:flutter/material.dart';

class MyRafflesButton extends StatelessWidget {
  const MyRafflesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),

      // Image and text
      child: Material(
        elevation: 4,
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.black12,
          onTap: () => Navigator.pushNamed(context, '/my-raffles'),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image
              Ink.image(
                image: const AssetImage('assets/img/myraffle.png'),
                width: 120,
                height: 120,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        'Meus sorteios',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Acompanhe o andamento de suas inscrições ',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
