import 'package:flutter/material.dart';

class BusinessEditProfilePage extends StatelessWidget {
  const BusinessEditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF9FBFF),
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
          'Editar Informações',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),

              // Textfied Business Name
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nome da Loja',
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Textfield phone
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Telefone de contato',
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
                height: 20,
              ),

              // Textfield CNPJ
              const TextField(
                decoration: InputDecoration(
                  labelText: 'CNPJ',
                ),
              ),

              const SizedBox(
                height: 100,
              ),

              const Text(
                'Endereço',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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

              // Textfield Address
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Endereço',
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Textfield Number
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Número',
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
                height: 60,
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
                    child: Divider(),
                  ),
                ],
              ),

              const SizedBox(
                height: 8,
              ),

              // login form
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                title: const Text(
                  'Trocar Senha',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => debugPrint('Sair'),
              ),

              // Vertical divider
              const Divider(),

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
      ),
    );
  }
}
