import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ContainerGestaoDeCarreira extends StatelessWidget {
  const ContainerGestaoDeCarreira(
      {super.key,
      required this.titulo,
      required this.icone,
      required this.botao});
  final String titulo;
  final Image icone;
  final String botao;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 100,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icone,
            Column(
              children: [
                Text(
                  titulo,
                  style:
                      const TextStyle(color: MinhasCores.branco, fontSize: 20),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    constraints: const BoxConstraints(minWidth: 170),
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
                    child: Center(
                      child: Text(
                        botao,
                        style: const TextStyle(color: MinhasCores.branco),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
