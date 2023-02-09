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
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
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
                height: 50,
              ),

              // login form
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
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

                      const SizedBox(
                        height: 20,
                      ),

                      // Textfield Email
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // Textfield Password
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      // forgot password hyperlink
                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () => debugPrint('Esqueceu a senha!'),
                          child: const Text(
                            'Esqueceu a Senha?',
                            style: TextStyle(
                              color: Color(0xFF8DCBE6),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
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
                          padding: const EdgeInsets.all(8.0),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Sing up btn
                      MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sing_up');
                        },
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // Divider: login as business
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          // Decoration
                          Expanded(
                            child: Divider(),
                          ),

                          // Text
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('É logista?'),
                          ),

                          // Decoration
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // Button: Login as bussiness
                      MaterialButton(
                        padding: const EdgeInsets.all(8.0),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/business-login');
                        },
                        child: const Text(
                          'Entrar como Lojista',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).padding.bottom + 60,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
