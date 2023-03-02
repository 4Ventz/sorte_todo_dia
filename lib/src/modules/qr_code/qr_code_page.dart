import 'package:flutter/material.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({super.key});

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
          'Regatar Prêmio',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Resgate seu prêmio agora!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
                'Mostre o código para os funcionários do estabelecimento para resceber seu prêmio'),
          ),
          const SizedBox(
            height: 30,
          ),

          //Qr Code
          Container(
            height: MediaQuery.of(context).size.height / 2,
            alignment: Alignment.center,
            child: Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 4,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img/qr_code.png',
                    ),
                  ),
                ),
              ),
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
