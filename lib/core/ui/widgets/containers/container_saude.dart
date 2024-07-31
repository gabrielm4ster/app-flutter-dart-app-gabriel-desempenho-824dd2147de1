import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ContainerSaude extends StatelessWidget {
  const ContainerSaude({
    super.key,
    required this.titulo,
    required this.icone,
    required this.status,
    required this.descricao,
  });
  final String titulo;
  final Icon icone;
  final String status;
  final String descricao;

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
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(color: MinhasCores.branco),
                  ),
                  icone,
                  Text(
                    status,
                    style: const TextStyle(color: MinhasCores.branco),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Lesão',
                      style: TextStyle(
                        fontFamily: 'StretchPro',
                        color: MinhasCores.branco,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      softWrap: true,
                      descricao,
                      style: const TextStyle(color: MinhasCores.branco),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
