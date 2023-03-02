import 'package:flutter/material.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
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
          'Resgatar Prêmio',
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

          const SizedBox(
            height: 10,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Mostre o código para os funcionários do estabelecimento para resceber seu prêmio',
            ),
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
    );
  }
}
