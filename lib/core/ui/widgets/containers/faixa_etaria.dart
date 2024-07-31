import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class FaixaEtariContainer extends StatelessWidget {
  const FaixaEtariContainer({
    super.key,
    required this.idade,
  });
  final int idade;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.47,
      width: 341.02,
      decoration: const BoxDecoration(
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [Color(0xFF981DB9), Color(0xFF0F76CE)],
            ),
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(13))),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 30,
            ),
            side: const BorderSide(width: 1, color: Colors.transparent)),
        child: Text(
          'SUB $idade',
          style:
              const TextStyle(fontFamily: 'Outfit', color: MinhasCores.branco),
        ),
      ),
    );
  }
}
