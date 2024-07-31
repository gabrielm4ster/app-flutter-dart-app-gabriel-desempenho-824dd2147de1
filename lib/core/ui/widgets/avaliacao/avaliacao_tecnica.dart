import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AvaliacaoCategoria extends StatelessWidget {
  const AvaliacaoCategoria(
      {super.key,
      required this.icone,
      required this.titulo,
      required this.quantidade});
  final String titulo;
  final Icon icone;

  final int quantidade;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 111,
        width: 360,
        decoration: const BoxDecoration(
          border: GradientBoxBorder(gradient: Meugradiente.gradiente),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icone,
            Text(
              titulo.toString(),
              style: const TextStyle(
                  color: MinhasCores.branco,
                  fontFamily: 'outfit',
                  fontSize: 12),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: GradientBoxBorder(gradient: Meugradiente.gradiente),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: MinhasCores.branco,
                    ),
                  ),
                  Text(
                    quantidade.toString(),
                    style: const TextStyle(
                        color: MinhasCores.branco,
                        fontFamily: 'outfit',
                        fontSize: 12),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: MinhasCores.branco,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
