import 'package:flutter/material.dart';

class EditPerfilPage extends StatelessWidget {
  const EditPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
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
          'Editar Informações',
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),

            // Textfield Name
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),

            // login form
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Text(
                'Minha Conta',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => debugPrint('Sair'),
            ),

            // Vertical divider
            const Divider(),

            // My Raffles btn
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Text(
                'Meus Sorteios',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => debugPrint('Meus Sorteios'),
            ),

            const Divider(),

            // Prize Btn
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Text(
                'Prêmios',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => debugPrint('Prêmios'),
            ),

            // Vertical divider
            const Divider(),

            ListTile(
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

            // Vertical divider
            const Divider(),
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
