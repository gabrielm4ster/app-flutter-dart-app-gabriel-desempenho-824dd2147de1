import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/container_saude_open.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class SaudePageOpen extends StatelessWidget {
  const SaudePageOpen({super.key});
  static final List<Map<String, dynamic>> estadoSAude = [
    {
      'icone': const Icon(
        Icons.circle_outlined,
        color: Colors.green,
        size: 100,
      ),
      'descricao': '''Entorse de tornozelo Data 31/03/23 a 7/04/23 (7 dias)''',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'saude',
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
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'Lesões ou fraturas',
                      style: TextStyle(
                          color: MinhasCores.branco,
                          fontFamily: 'outfit',
                          fontSize: 20),
                    ),
                    ...List.generate(
                      estadoSAude.length,
                      (int index) => Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ContainerSaudeOpen(
                          icone: estadoSAude[index]['icone'],
                          descricao: estadoSAude[index]['descricao'],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
