import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/container_escolha_avalia%C3%A7%C3%A3o.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class AvaliacoesPage extends StatelessWidget {
  const AvaliacoesPage({super.key});
  static final List<Map<String, dynamic>> avaliacao = [
    {
      'titulo': 'Técnica',
      'icone': const Icon(
        Icons.sports_soccer,
        color: MinhasCores.branco,
      )
    },
    {
      'titulo': 'Psicológica',
      'icone': const Icon(
        Icons.trending_neutral_rounded,
        color: MinhasCores.branco,
      )
    },
    {
      'titulo': 'Física',
      'icone': const Icon(
        Icons.fitness_center,
        color: MinhasCores.branco,
      )
    },
    {
      'titulo': 'Tática',
      'icone': const Icon(
        Icons.run_circle,
        color: MinhasCores.branco,
      )
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'Avaliação',
          style: TextStyle(fontFamily: 'StretchPro', fontSize: 20),
        ),
        centerTitle: true,
      ),
      backgroundColor: MinhasCores.cinza,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background3.webp',
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 150.0),
              child: Column(
                children: [
                  ...List.generate(
                    avaliacao.length,
                    (int index) => Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ContainerEscolhaAvaliacao(
                        titulo: avaliacao[index]['titulo'],
                        icone: avaliacao[index]['icone'],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
