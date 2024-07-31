import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class InfoUser extends StatelessWidget {
  const InfoUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            border: GradientBoxBorder(
              width: 4,
              gradient: LinearGradient(
                colors: [
                  MinhasCores.rosa,
                  MinhasCores.azul,
                ],
              ),
            ),
          ),
          child: const Icon(
            Icons.account_circle_outlined,
            color: MinhasCores.branco,
            size: 160,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Lucas',
          style: TextStyle(
            color: MinhasCores.branco,
            fontFamily: 'StretchPro',
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Atacante - Sub - 13 - Society',
          style: TextStyle(
            color: MinhasCores.branco,
            fontFamily: 'Outfit',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Escola Flamengo - Caratinga MG',
          style: TextStyle(color: MinhasCores.branco, fontFamily: 'Outfit'),
        ),
      ],
    );
  }
}
