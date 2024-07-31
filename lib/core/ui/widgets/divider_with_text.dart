import 'package:flutter/material.dart';
import 'package:desempenho_esportivo/_comum/minhas_cores.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(color: MinhasCores.cinza_claro),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'OU',
              style: TextStyle(
                color: MinhasCores.branco,
                fontSize: 16,
                fontFamily: 'Outfit',
              ),
            ),
          ),
          Expanded(
            child: Divider(color: MinhasCores.cinza_claro),
          ),
        ],
      ),
    );
  }
}
