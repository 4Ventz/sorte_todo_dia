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
                    BackButton(),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      title: const Text(
                        'Minha Conta',
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => Navigator.pushNamed(context, '/edit-profile'),
                    ),

                    // Vertical divider
                    const Divider(),

                    // My Raffles btn
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            title: const Text(
                              'Meus Sorteios',
                            ),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => Navigator.pushNamed(context, '/my-raffles'),
                          ),
                        )
                      ],
                    ),

                    const Divider(),

                    // Prize Btn
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            title: const Text(
                              'Prêmios',
                            ),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => Navigator.pushNamed(context, '/prizes'),
                          ),
                        )
                      ],
                    ),

                    // Vertical divider
                    const Divider(),

                    Row(
                      children: [
                        Expanded(
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
                      ],
                    ),

                    // Vertical divider
                    const Divider(),

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
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: Color(0xFFF9FBFF),
        ),
        child: NavigationBar(
          selectedIndex: 1,
          backgroundColor: const Color(0xFFF9FBFF),
          onDestinationSelected: (value) {},
          destinations: [
            // Home
            const NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 25,
              ),
              label: ("Home"),
            ),

            // raffle
            NavigationDestination(
              icon: Image.asset(
                'assets/img/logo1.png',
                height: 25,
              ),
              label: ('Sorteio'),
            ),

            // Prizes
            const NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/img/trophy1.png'),
                size: 20,
              ),
              label: ('Prêmios'),
            ),
          ],
        ),
      ),
    );
  }
}
