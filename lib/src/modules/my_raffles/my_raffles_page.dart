import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/modules/my_raffles/widget/my_raffles_chipset_filter.dart';
import 'package:sorte_todo_dia/src/shared/widget/raffle_status_card.dart';

class MyRafflesPage extends StatelessWidget {
  const MyRafflesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          'Meus Sorteios',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 20,
                ),

                Text(
                  'Filtros',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: 10,
                ),

                //Chips
                //TODO: Code controllers + Change chip colors on Selected
                MyRafflesFilter(),
                SizedBox(
                  height: 20,
                ),
                Divider(),

                SizedBox(
                  height: 20,
                ),

                RaffleStatusCard(),

                SizedBox(
                  height: 20,
                ),
                RaffleStatusCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
