import 'package:flutter/material.dart';

class QrCodeButton extends StatelessWidget {
  const QrCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Navigator.pushReplacementNamed(context, '/qr-code');
        },
        child: const Text(
          'Gerar Qr Code',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
