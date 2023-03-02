import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xFFF6D006),
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
        children: [
          // TODO: Carousel
          Container(
            width: double.infinity,
            height: 200,
            color: const Color(0xFFCCCCCC),
            child: const Center(
              child: Text(
                '<Isso será um carrossel de banners>',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          // Prize Btn
          Container(
            // Gradient border
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
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

            // Image and text
            child: Material(
              elevation: 6,
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.black12,
                onTap: () => Navigator.pushNamed(context, '/prizes'),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // image
                    Ink.image(
                      image: const AssetImage('assets/img/prize_btn.jpg'),
                      width: 140,
                      height: 140,
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
                      child: Column(
                        children: const [
                          Text(
                            'Parabéns!',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Você tem X prêmios a resgatar',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
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
                      'Adicionados Recentemente',
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
                        onTap: () => Navigator.pushNamed(context, '/prizes-details'),
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Combo Solteiro',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
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

                    // button
                    Container(
                      margin: const EdgeInsets.only(
                        right: 8,
                        bottom: 8,
                      ),
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
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () => debugPrint('Participar'),
                        child: const Text(
                          'Participar',
                          style: TextStyle(fontSize: 14),
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
                        onTap: () => Navigator.pushNamed(context, '/prizes-details'),
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Combo Solteiro',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
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

                    // button
                    Container(
                      margin: const EdgeInsets.only(
                        right: 8,
                        bottom: 8,
                      ),
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
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () => debugPrint('Participar'),
                        child: const Text(
                          'Participar',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(0xFFF9FBFF),
          indicatorColor: const Color.fromARGB(166, 239, 225, 27),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: 1,
          onDestinationSelected: (value) {},
          destinations: [
            // Home
            NavigationDestination(
              icon: Image.asset(
                'assets/img/home.png',
                height: 25,
              ),
              label: ('Home'),
            ),

            // raffle
            NavigationDestination(
              icon: Image.asset(
                'assets/img/ticket.png',
                height: 25,
              ),
              label: ('Sorteio'),
            ),

            // Prizes
            NavigationDestination(
              icon: Image.asset(
                'assets/img/trophy1.png',
                height: 25,
              ),
              label: ('Prêmios'),
            ),
          ],
        ),
      ),
    );
  }
}
