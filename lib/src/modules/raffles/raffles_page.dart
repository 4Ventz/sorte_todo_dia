import 'package:flutter/material.dart';

class RafflePage extends StatelessWidget {
  const RafflePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
        title: const Text(
          'Sorteio',
        ),
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
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          // My raffle btn
          Container(
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
                onTap: () => debugPrint('Image BTN'),
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
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
          ),

          const SizedBox(
            height: 40,
          ),

          // Itens list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sorteios',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    // Btn
                    InkWell(
                      onTap: () => {
                        debugPrint('teste'),
                      },
                      child: Row(
                        children: const [
                          Text(
                            'Ver todos',
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // Itens card
                Stack(
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
                        onTap: () => debugPrint('Image BTN'),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // image
                            Ink.image(
                              image: const AssetImage('assets/img/xtudo1.png'),
                              width: 140,
                              height: 140,
                            ),

                            // Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Combo Solteiro',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Concorra a um delicioso X-tudo!',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFA69696),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        margin: const EdgeInsets.only(left: 250),
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
                        child: Material(
                          color: const Color.fromARGB(0, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () => {
                              debugPrint('participar'),
                            },
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Participar',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                Stack(
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
                        onTap: () => debugPrint('Image BTN'),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // image
                            Ink.image(
                              image: const AssetImage('assets/img/xtudo1.png'),
                              width: 140,
                              height: 140,
                            ),

                            // Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Combo Solteiro',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Concorra a um delicioso X-tudo!',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFA69696),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        margin: const EdgeInsets.only(left: 250),
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
                        child: Material(
                          color: const Color.fromARGB(0, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () => {
                              debugPrint('participar'),
                            },
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Participar',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                Stack(
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
                        onTap: () => debugPrint('Image BTN'),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // image
                            Ink.image(
                              image: const AssetImage('assets/img/xtudo1.png'),
                              width: 140,
                              height: 140,
                            ),

                            // Text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Combo Solteiro',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Concorra a um delicioso X-tudo!',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFA69696),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        margin: const EdgeInsets.only(left: 250),
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
                        child: Material(
                          color: const Color.fromARGB(0, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () => {
                              debugPrint('participar'),
                            },
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Participar',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(),
        child: NavigationBar(
          selectedIndex: 2,
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
                size: 25,
              ),
              label: ('Prêmios'),
            ),
          ],
        ),
      ),
    );
  }
}
