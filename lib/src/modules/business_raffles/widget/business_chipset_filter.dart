import 'package:flutter/material.dart';

class BusinessChipsetFilter extends StatelessWidget {
  const BusinessChipsetFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
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
          label: const Text('Em andamento'),
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
          label: const Text('Finalizados'),
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
          label: const Text('Disponíveis'),
          onSelected: (value) => {},
        ),
      ],
    );
  }
}
