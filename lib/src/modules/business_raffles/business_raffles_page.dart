import 'package:flutter/material.dart';

class BusinessRafflesPage extends StatelessWidget {
  const BusinessRafflesPage({super.key});

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
          'Sorteios',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      'Filtros',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //Chips 1
                    //TODO: Code controllers + Change chip colors on Selected
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 12.0,
                        runSpacing: 12.0,
                        children: [
                          FilterChip(
                            onSelected: (value) => {},
                            selectedColor: const Color(0xFFE90909),
                            label: const Text('Todos'),
                          ),
                          FilterChip(
                            selected: true,
                            onSelected: (value) => {},
                            selectedColor: const Color(0xFFE90909),
                            label: const Text('Em andamento'),
                          ),
                          FilterChip(
                            onSelected: (value) => {},
                            selectedColor: const Color(0xFFE90909),
                            label: const Text('Disponíveis'),
                          ),
                          FilterChip(
                            onSelected: (value) => {},
                            selectedColor: const Color(0xFFE90909),
                            label: const Text('Finalizados'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(),

                const SizedBox(
                  height: 20,
                ),

                // Itens card
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
