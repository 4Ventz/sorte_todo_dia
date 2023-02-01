import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'Home',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Carousel
            Container(
              width: double.infinity,
              height: 200,
              color: const Color(0xFFCCCCCC),
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
                  splashColor: Colors.black54,
                  onTap: () => debugPrint('Image BTN'),
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
                    height: 20,
                  ),

                  // Itens card
                  Container(
                    // Image and text
                    child: Material(
                      elevation: 6,
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Colors.black54,
                        onTap: () => debugPrint('Image BTN'),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // image
                            Ink.image(
                              image: const AssetImage('assets/img/prize_btn.jpg'),
                              width: 140,
                              height: 140,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
