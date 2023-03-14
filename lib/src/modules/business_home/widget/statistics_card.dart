import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/shared/widget/read_qr_code_button.dart';

class Statistics_card extends StatelessWidget {
  const Statistics_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Estatísticas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),

            //values
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    //Total de sorteios
                    Container(
                      padding: const EdgeInsets.all(2.5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
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
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Text(
                          '100',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Total de \n Sorteios',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(children: [
                  // Total de Participantes
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
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
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Text(
                        '500',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Total de \n Participantes',
                    textAlign: TextAlign.center,
                  ),
                ])
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // QRCode Btn
            const ReadQrCodeButton()
          ],
        ),
      ),
    );
  }
}
