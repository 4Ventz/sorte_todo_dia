import 'package:flutter/material.dart';

class BusinessEditProfilePage extends StatelessWidget {
  const BusinessEditProfilePage({super.key});

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
                      'Editar Perfil',
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
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield CNPJ
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'CNPJ',
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield phone
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield Email
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),

                    const SizedBox(
                      height: 80,
                    ),

                    const Text(
                      'Endereço',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),

                    // Textfield CEP
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'CEP',
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield State
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Estado',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield city
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Cidade',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield Adress
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Endereço',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Textfield Adress Nº
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Número',
                      ),
                    ),

                    const SizedBox(
                      height: 70,
                    ),

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
                          child: Text('Segurança'),
                        ),

                        // Decoration
                        Expanded(
                          child: Divider(
                            height: 10,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      title: const Text(
                        'Deletar Conta',
                        style: TextStyle(
                          color: Color(0xFFE90909),
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => debugPrint('Sair'),
                    ),

                    // Vertical divider
                    const Divider(),

                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 40,
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
