import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/modules/business_raffles/widget/business_chipset_filter.dart';
import 'package:sorte_todo_dia/src/shared/widget/business_raffle_status_card.dart';

class BusinessRafflesPage extends StatelessWidget {
  const BusinessRafflesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                BusinessChipsetFilter(),
                SizedBox(
                  height: 20,
                ),
                Divider(),

                SizedBox(
                  height: 20,
                ),

                BusinessRaffleStatusCard(),

                SizedBox(
                  height: 20,
                ),

                BusinessRaffleStatusCard(),

                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
