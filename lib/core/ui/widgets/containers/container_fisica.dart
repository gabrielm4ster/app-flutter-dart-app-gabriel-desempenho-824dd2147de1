import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_icon/gradient_icon.dart';

class ContainerFisica extends StatelessWidget {
  const ContainerFisica(
      {super.key,
      required this.titulo,
      required this.porcentagem,
      required this.icone,
      required this.teste});
  final String titulo;
  final GradientIcon icone;
  final String teste;
  final String porcentagem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
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
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  icone,
                  Text(
                    porcentagem,
                    style: const TextStyle(
                        color: MinhasCores.branco, fontFamily: 'outfit'),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Column(
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                      color: MinhasCores.branco, fontFamily: 'outfit'),
                ),
                Text(
                  teste,
                  style: const TextStyle(
                      color: MinhasCores.branco, fontFamily: 'outfit'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
