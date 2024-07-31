import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CategoriaIdade extends StatelessWidget {
  const CategoriaIdade({
    super.key,
    required this.titulo,
  });

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 100,
      height: 30,
      decoration: const BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [Color(0xFF981DB9), Color(0xFF0F76CE)],
          ),
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(23),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          titulo,
          style: const TextStyle(
            color: MinhasCores.branco,
            fontFamily: 'outfit',
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
