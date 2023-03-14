import 'package:flutter/material.dart';

class BusinessChangeCnpjPage extends StatelessWidget {
  const BusinessChangeCnpjPage({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    BackButton(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Alterar CNPJ',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // login form
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield new password
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Novo CNPJ',
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield Confirm password
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirme o Novo CNPJ',
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

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
                          debugPrint('Salvar novo cnpj');
                        },
                        child: const Text(
                          'Confirmar',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
