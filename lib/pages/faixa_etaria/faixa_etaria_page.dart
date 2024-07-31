import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/faixa_etaria.dart';
import 'package:flutter/material.dart';

class FaixaEtaria extends StatelessWidget {
  const FaixaEtaria({
    super.key,
  });
  static final List<Map<String, dynamic>> containers = [
    {'idade': 9},
    {'idade': 10},
    {'idade': 11},
    {'idade': 13},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.cinza,
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/background.webp',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'QUAL FAIXA ÉTARIA',
                  style: TextStyle(
                    color: MinhasCores.branco,
                    fontFamily: 'StretchPro',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                ...List.generate(
                  containers.length,
                  (int index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaixaEtariContainer(
                      idade: containers[index]['idade'],
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
