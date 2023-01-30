import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img/Logo.png'),
                Text(
                  'Sorte Todo Dia!',
                  style: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.w400),
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
                    // Title
                    Text(
                      'Acessar',
                      style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500),
                    ),

                    // Textfield Email
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),

                    // Textfield Password
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      ),
                    ),

                    // forgot password hyperlink
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 60, 0),
                        child: Text(
                          'Esqueceu a senha?',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF8DCBE6),
                          ),
                        ),
                      ),
                    ),

                    // sizedBox
                    const SizedBox(
                      height: 30,
                    ),

                    // Button sing in

                    Container(
                      height: 40,
                      width: 250,
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
                        child: Text(
                          'Entrar',
                          style: GoogleFonts.roboto(fontSize: 16),
                        ),
                      ),
                    ),

                    // sizedBox
                    const SizedBox(
                      height: 10,
                    ),

                    // Button sing up
                    MaterialButton(
                      onPressed: () => {
                        debugPrint('Cadastrar'),
                      },
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFF000000),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cadastrar',
                              style: GoogleFonts.roboto(fontSize: 16),
                            ),
                          ],
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
                        SizedBox(
                          height: 1,
                          width: 100,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        // Expanded(child: Divider()),

                        // Text
                        Text('É logista?'),

                        // Decoration
                        SizedBox(
                          height: 1,
                          width: 100,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // sizedBox
                    const SizedBox(
                      height: 30,
                    ),

                    // Button: Login as bussiness
                    MaterialButton(
                      onPressed: () => {
                        debugPrint('Entrar como lojista'),
                      },
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFF000000),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Entrar como Lojista',
                              style: GoogleFonts.roboto(fontSize: 14),
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
