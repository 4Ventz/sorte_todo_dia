import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/shared/widget/chipset_filter.dart';
import 'package:sorte_todo_dia/src/shared/widget/raffle_status_card.dart';

class MyPrizesPage extends StatelessWidget {
  const MyPrizesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Filtros',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //Chips 1
                    //TODO: Code controllers + Change chip colors on Selected
                    ChipsetFilter()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                const RaffleStatusCard(),
                const SizedBox(
                  height: 20,
                ),
                const RaffleStatusCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
