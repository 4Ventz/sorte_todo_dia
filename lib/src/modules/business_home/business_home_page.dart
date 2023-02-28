import 'package:flutter/material.dart';

class BusinessHomePage extends StatelessWidget {
  const BusinessHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'Home',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const SizedBox(
            height: 25,
          ),

          //Statistics + read QrCode btn
          Material(
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

                  // Camera Btn
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                      padding: const EdgeInsets.all(8.0),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        debugPrint('Leitor Qr Code');
                      },
                      child: const Text(
                        'Ler Qr Code',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          // Itens list
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Meus Sorteios',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  // Btn
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/raffles');
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
                height: 20,
              ),

              // Card 1
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sorteio Nº 44.123',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Divider(
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Validade: 05 / 02 / 2022',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFA69696),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    margin: const EdgeInsets.only(right: 5),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF3DC04),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  const Text('Em andamento'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Card 2
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sorteio Nº 44.123',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Divider(
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Validade: 05 / 02 / 2022',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFA69696),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    margin: const EdgeInsets.only(right: 5),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF00F518),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                  const Text('Resgatado'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
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
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                size: 25,
              ),
              label: ('Scanner'),
            ),
          ],
        ),
      ),
    );
  }
}
