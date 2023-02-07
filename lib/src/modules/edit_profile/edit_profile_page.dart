import 'package:flutter/material.dart';

class EditPerfilPage extends StatelessWidget {
  const EditPerfilPage({super.key});

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

              // Textfield Name
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Textfield phone
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Celular',
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
                height: 60,
              ),

              const Text(
                'Endereço',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),

              const SizedBox(
                height: 10,
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
