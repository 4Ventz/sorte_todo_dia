import 'package:flutter/material.dart';

class PrizesDetailsPage extends StatelessWidget {
  const PrizesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person_outlined,
              size: 30,
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
            children: [
              //Image
              Container(
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
              ),

              //Text
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
              )
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
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: const Color(0xFFF9FBFF),
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFFA69696),
        items: const [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ("Home"),
          ),

          // raffle
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/img/logo1.png'),
            ),
            label: ('Sorteio'),
          ),

          // Prizes
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/img/trophy1.png'),
            ),
            label: ('Prêmios'),
          ),
        ],
      ),
    );
  }
}
