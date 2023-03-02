import 'package:flutter/material.dart';

class MyRafflesPage extends StatelessWidget {
  const MyRafflesPage({super.key});

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
          'Meus Sorteios',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
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

                //Chips
                //TODO: Code controllers + Change chip colors on Selected
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    FilterChip(
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: Color(0xFFE90909),
                          width: 2,
                        ),
                      ),
                      selectedColor: const Color(0xFFE90909),
                      label: const Text('Todos'),
                      onSelected: (value) => {},
                    ),
                    FilterChip(
                      selected: true,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: Color(0xFFE90909),
                          width: 2,
                        ),
                      ),
                      selectedColor: const Color(0xFFfff000),
                      label: const Text('Em andamento'),
                      onSelected: (value) => {},
                    ),
                    FilterChip(
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: Color(0xFFE90909),
                          width: 2,
                        ),
                      ),
                      selectedColor: const Color(0xFFE90909),
                      label: const Text('Finalizados'),
                      onSelected: (value) => {},
                    ),
                    FilterChip(
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: Color(0xFFE90909),
                          width: 2,
                        ),
                      ),
                      selectedColor: const Color(0xFFE90909),
                      label: const Text('Disponíveis'),
                      onSelected: (value) => {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),

                const SizedBox(
                  height: 20,
                ),

                // card
                Material(
                  elevation: 6,
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.black12,
                    onTap: () => Navigator.pushNamed(context, ''),
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

                // card
                Material(
                  elevation: 6,
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.black12,
                    onTap: () => Navigator.pushNamed(context, ''),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
