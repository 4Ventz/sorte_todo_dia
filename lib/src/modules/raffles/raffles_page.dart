import 'package:flutter/material.dart';
import 'package:sorte_todo_dia/src/modules/raffles/widgets/my_raffles_button.dart';
import 'package:sorte_todo_dia/src/shared/widget/join_raffle_card.dart';

class RafflePage extends StatelessWidget {
  const RafflePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        const MyRafflesButton(),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Todos os Sorteios',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              JoinRaffleCard(),
              SizedBox(
                height: 20,
              ),
              JoinRaffleCard(),
            ],
          ),
        ),
      ],
    );
  }
}
