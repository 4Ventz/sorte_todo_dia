import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Fulano da Silva',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // login form
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // My account Btn
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                title: const Text(
                                  'Minha Conta',
                                ),
                                trailing: const Icon(Icons.chevron_right),
                                onTap: () => debugPrint('Sair'),
                              ),
                            ),
                          )
                        ],
                      ),

                      // Vertical divider
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                      // My Raffles btn
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                title: const Text(
                                  'Meus Sorteios',
                                ),
                                trailing: const Icon(Icons.chevron_right),
                                onTap: () => debugPrint('Meus Sorteios'),
                              ),
                            ),
                          )
                        ],
                      ),

                      // Vertical divider
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                      // Prize Btn
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                title: const Text(
                                  'Prêmios',
                                ),
                                trailing: const Icon(Icons.chevron_right),
                                onTap: () => debugPrint('Prêmios'),
                              ),
                            ),
                          )
                        ],
                      ),

                      // Vertical divider
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                leading: const Icon(
                                  Icons.logout_outlined,
                                  color: Color(0xFFE90909),
                                ),
                                title: const Text(
                                  'Sair',
                                  style: TextStyle(
                                    color: Color(0xFFE90909),
                                  ),
                                ),
                                trailing: const Icon(Icons.chevron_right),
                                onTap: () => debugPrint('Sair'),
                              ),
                            ),
                          )
                        ],
                      ),

                      // Vertical divider
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                      // App version
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Versão: 1.0.0',
                            style: TextStyle(
                              color: Color(0xFFC0BDBD),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
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
