import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/shared/widget/join_button.dart';
import 'package:sorte_todo_dia/src/shared/widget/prize_banner.dart';
import 'package:sorte_todo_dia/src/shared/widget/raffle_number_container.dart';

class PrizesDetailsPage extends StatelessWidget {
  const PrizesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Detalhes',
        ),
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: const [
              PrizeBanner(),
              RaffleNumberContainer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),

                // Title
                const Center(
                  child: Text(
                    'Combo solteiro',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Description
                const Text(
                  'Concorra a 1 X-Tudo mais porção de batata frita e refrigerante de 500 ml',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                //Divider
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color(0xFFA69696),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Status
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Situação:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Disponível',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 2,
                ),

                // Expiration date
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Válido até:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '01 / 02 / 2023',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),

                //Divider
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color(0xFFA69696),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                  'Alfedro Lanches',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const Text(
                  'Rua genérica ali do Lado 1234, Bairro 1, Ubatuba - SP',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const JoinButton(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
