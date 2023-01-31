import 'package:flutter/material.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
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
            // sizedBox
            const SizedBox(
              height: 60,
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
                        'Cadastro',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),

                      // Textfield Name
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                        ),
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

                      // Textfield cell phone
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Celular',
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // Textfield State
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Estado',
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // Textfield City
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Cidade',
                        ),
                      ),

                      // sizedBox
                      const SizedBox(
                        height: 50,
                      ),

                      // Textfield password
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // Textfield confirm password
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Senha',
                        ),
                      ),

                      // sizedBox
                      const SizedBox(
                        height: 60,
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
                            debugPrint('Confirmar'),
                          },
                          child: const Text(
                            'Confirmar',
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
                            debugPrint('Voltar'),
                          },
                          child: const Text(
                            'Voltar',
                            style: TextStyle(fontSize: 16),
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
