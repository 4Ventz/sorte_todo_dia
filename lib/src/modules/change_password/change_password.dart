import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF6D006),
        title: const Text(
          'Trocar senha',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: ListView(
            children: const [
              SizedBox(
                height: 20,
              ),

              // Textfield Name
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nova Senha',
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Textfield phone
              const TextField(
                decoration: InputDecoration(
                  labelText: 'conifirmar senha',
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
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
