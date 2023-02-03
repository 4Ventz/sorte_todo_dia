import 'package:flutter/material.dart';

class MyRafflesPage extends StatelessWidget {
  const MyRafflesPage({super.key});

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
          'Meus sorteios',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Filtros'),

                  //Chips 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Chip(
                        label: Text('Todos'),
                      ),
                      Chip(
                        label: Text('Em Andamento'),
                      ),
                      Chip(
                        label: Text('Finalizados'),
                      ),
                    ],
                  ),

                  // Chips 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Chip(
                        label: Text('Disponíveis'),
                      ),
                      Chip(
                        label: Text('Resgatados'),
                      ),
                      Chip(
                        label: Text('Vencidos'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                          children: const [
                            Text(
                              'Combo Solteiro',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Concorra a um delicioso X-tudo!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFA69696),
                              ),
                            ),
                            SizedBox(
                              height: 25,
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
    );
  }
}
