import 'package:flutter/material.dart';

class BusinessSingUpPage extends StatelessWidget {
  const BusinessSingUpPage({super.key});

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
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 60, 10, 0),
          padding: const EdgeInsets.symmetric(horizontal: 60),
          width: double.infinity,
          height: double.infinity,
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
                  height: 60,
                ),
                // Title
                const Text(
                  'Cadastro para Empresas',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Textfield Business Name
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome do Estabelecimento',
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

                // Textfield cellphone
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Celular',
                  ),
                ),

                const SizedBox(
                  height: 60,
                ),

                // Textfield CEP
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'CEP',
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

                // Textfield Adress
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Textfield Number
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Número',
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // sizedBox
                const SizedBox(
                  height: 60,
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
                    padding: const EdgeInsets.all(8.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/business-login');
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

                // Button: Back
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
                    'Voltar',
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
      ),
    );
  }
}
