import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

class RowEmojis extends StatelessWidget {
  const RowEmojis({
    super.key,
    required this.icone,
    required this.porcentagemrow,
  });

  final GradientIcon icone;
  final String porcentagemrow;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            icone,
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                porcentagemrow,
                style: const TextStyle(color: MinhasCores.branco, fontSize: 15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
