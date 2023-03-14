import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/modules/business_home/widget/statistics_card.dart';
import 'package:sorte_todo_dia/src/shared/widget/business_raffle_status_card.dart';

class BodyBusinessHomePage extends StatelessWidget {
  const BodyBusinessHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      children: [
        const SizedBox(
          height: 25,
        ),

        const Statistics_card(),

        const SizedBox(
          height: 50,
        ),
        // Itens list
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Em andamento',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            const BusinessRaffleStatusCard(),
            const SizedBox(
              height: 20,
            ),

            const BusinessRaffleStatusCard(),

            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
