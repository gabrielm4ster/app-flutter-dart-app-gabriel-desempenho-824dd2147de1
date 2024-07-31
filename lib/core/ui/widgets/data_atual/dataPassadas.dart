import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Datapassadas extends StatelessWidget {
  const Datapassadas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Color(0xFF981DB9),
                Color(0xFF0F76CE),
              ],
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'treino',
                style: TextStyle(color: MinhasCores.branco),
              ),
              Text(
                'dia $DataAtual',
                style: const TextStyle(color: MinhasCores.branco),
              ),
              const Icon(Icons.check),
              const Text(
                'feito',
                style: TextStyle(color: MinhasCores.branco),
              )
            ],
          ),
        ),
      ),
    );
  }
}
