import 'package:flutter/material.dart';

class JoinRaffleCard extends StatelessWidget {
  const JoinRaffleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        // card
        Material(
          elevation: 6,
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: Colors.black12,
            onTap: () => Navigator.pushNamed(context, '/prizes-details'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image
                Ink(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/img/xtudo1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: MediaQuery.of(context).size.width * 0.35,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),

                // Text
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Combo Solteiro',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Concorra a um delicioso X-tudo!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA69696),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // button
        Container(
          margin: const EdgeInsets.only(
            right: 8,
            bottom: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFFEA20),
                Color(0xFFF1DB00),
              ],
            ),
          ),
          child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () => debugPrint('Participar'),
            child: const Text(
              'Participar',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
