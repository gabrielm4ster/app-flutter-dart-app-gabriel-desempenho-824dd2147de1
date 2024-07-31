import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
// import 'package:desempenho_esportivo/core/ui/widgets/estatistica_container.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Avaliacao extends StatelessWidget {
  const Avaliacao({
    super.key,
    required this.titulo,
    required this.descricaoBol,
    required this.descricaoCheck,
    required this.descricaoError,
    required this.valueBol,
    required this.valueCheck,
    required this.valueError,
  });

  final String titulo, descricaoBol, descricaoCheck, descricaoError;
  final int valueBol, valueCheck, valueError;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 111.23,
          width: 361.17,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  color: MinhasCores.branco,
                  fontFamily: 'outfit',
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.sports_soccer,
                          color: MinhasCores.branco),
                      Text(
                        valueBol.toString(),
                        style: const TextStyle(
                            color: MinhasCores.branco,
                            fontFamily: 'outfit',
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.check, color: Colors.green),
                      Text(
                        valueCheck.toString(),
                        style: const TextStyle(
                            color: MinhasCores.branco,
                            fontFamily: 'outfit',
                            fontSize: 12),
                      ),
                      Text(
                        descricaoCheck,
                        style: const TextStyle(
                            color: MinhasCores.branco,
                            fontFamily: 'outfit',
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.close, color: Colors.red),
                      Text(
                        valueError.toString(),
                        style: const TextStyle(
                            color: MinhasCores.branco,
                            fontFamily: 'outfit',
                            fontSize: 12),
                      ),
                      Text(
                        descricaoError,
                        style: const TextStyle(
                            color: MinhasCores.branco,
                            fontFamily: 'outfit',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                indent: 10,
                color: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
