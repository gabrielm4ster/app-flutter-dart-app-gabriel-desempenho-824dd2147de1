import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/container_gestao_de_carreira.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class GestaoDeCarreira extends StatelessWidget {
  const GestaoDeCarreira({super.key});
  static final List<Map<String, dynamic>> gestao = [
    {
      'titulo': 'Técnica',
      'botao': 'melhores desempenhos',
      'icone': const Image(image: AssetImage('assets/images/gestao.webp'))
    },
    {
      'titulo': 'Psicológica',
      'botao': 'ja foram jogados',
      'icone': const Image(image: AssetImage('assets/images/competicoes.webp'))
    },
    {
      'titulo': 'Física',
      'botao': 'propostas',
      'icone': const Image(image: AssetImage('assets/images/patrocinio.webp'))
    },
    {
      'titulo': 'Tática',
      'botao': 'lesões ou fraturas',
      'icone': const Image(image: AssetImage('assets/images/saude.webp'))
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'Gestão de carreira',
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
            child: Column(
              children: [
                const Divider(
                  color: Colors.transparent,
                  height: 70,
                ),
                ...List.generate(
                  gestao.length,
                  (int index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ContainerGestaoDeCarreira(
                      titulo: gestao[index]['titulo'],
                      botao: gestao[index]['botao'],
                      icone: gestao[index]['icone'],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                  height: 150,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
