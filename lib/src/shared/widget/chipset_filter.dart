import 'package:flutter/material.dart';

class ChipsetFilter extends StatelessWidget {
  const ChipsetFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 10,
        runSpacing: 10,
        children: [
          FilterChip(
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xFFE90909),
                width: 2,
              ),
            ),
            selectedColor: const Color(0xFFE90909),
            label: const Text('Todos'),
            onSelected: (value) => {},
          ),
          FilterChip(
            selected: true,
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xFFE90909),
                width: 2,
              ),
            ),
            selectedColor: const Color(0xFFfff000),
            label: const Text('Disponíveis'),
            onSelected: (value) => {},
          ),
          FilterChip(
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xFFE90909),
                width: 2,
              ),
            ),
            selectedColor: const Color(0xFFE90909),
            label: const Text('Resgatados'),
            onSelected: (value) => {},
          ),
          FilterChip(
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xFFE90909),
                width: 2,
              ),
            ),
            selectedColor: const Color(0xFFE90909),
            label: const Text('Vencidos'),
            onSelected: (value) => {},
          ),
        ],
      ),
    );
  }
}
