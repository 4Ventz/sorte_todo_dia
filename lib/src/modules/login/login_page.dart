import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
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

        // Text and Icon
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img/Logo.png'),
                const Text(
                  'Sorte Todo Dia!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            // login form
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),

                      // Title
                      const Text(
                        'Acessar',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),

                      // Textfield Email
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),

                      // Textfield Password
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      ),

                      // forgot password hyperlink
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8DCBE6),
                          ),
                        ),
                      ),

                      // sizedBox
                      const SizedBox(
                        height: 40,
                      ),

                      // Sing in btn
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () => {
                            debugPrint('Entrar'),
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      // sizedBox
                      const SizedBox(
                        height: 20,
                      ),

                      // Sing up btn
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () => {
                            debugPrint('Cadastrar'),
                          },
                          child: const Text(
                            'Cadastrar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      //sizedBox
                      const SizedBox(
                        height: 40,
                      ),

                      // Divider: login as business
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          // Decoration
                          Expanded(child: Divider()),

                          // Text
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('É logista?'),
                          ),

                          // Decoration
                          Expanded(child: Divider()),
                        ],
                      ),

                      // sizedBox
                      const SizedBox(
                        height: 30,
                      ),

                      // Button: Login as bussiness
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () => {
                            debugPrint('Login as Business'),
                          },
                          child: const Text(
                            'Entrar como lojista',
                            style: TextStyle(fontSize: 14),
                          ),
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
    );
  }
}
