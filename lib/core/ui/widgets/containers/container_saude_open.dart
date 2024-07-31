import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ContainerSaudeOpen extends StatelessWidget {
  const ContainerSaudeOpen({
    super.key,
    required this.icone,
    required this.descricao,
  });
  final Icon icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 400,
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icone,
              const Text(
                'Lesão',
                style: TextStyle(
                    color: MinhasCores.branco,
                    fontSize: 20,
                    fontFamily: 'stretchpro'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Text(
                  descricao,
                  style: const TextStyle(color: MinhasCores.branco),
                ),
              ),
              const Text(
                'status',
                style: TextStyle(
                  fontFamily: 'StretchPro',
                  color: MinhasCores.branco,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(23),
                        ),
                        border: GradientBoxBorder(
                            gradient: Meugradiente.gradiente)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Recuperado',
                        style: TextStyle(color: MinhasCores.branco),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(23),
                        ),
                        border: GradientBoxBorder(
                            gradient: Meugradiente.gradiente)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Em recup.',
                        style: TextStyle(color: MinhasCores.branco),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
