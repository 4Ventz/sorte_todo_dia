import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/raffles');
      },
      child: Row(
        children: const [
          Text(
            'Ver todos',
            style: TextStyle(fontSize: 12),
          ),
          Icon(Icons.chevron_right_outlined),
        ],
      ),
    );
  }
}
