import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/containers_estrelas.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Tatica extends StatelessWidget {
  const Tatica({super.key});
  static final List<Map<String, dynamic>> categoria = [
    {
      'titulo': 'Estratégia',
    },
    {
      'titulo': 'Análise',
    },
    {
      'titulo': 'Comunicação',
    },
    {
      'titulo': '',
    },
    {
      'titulo': '',
    },
  ];
  static final List<Map<String, dynamic>> estrelas = [
    {
      'titulo': 'avaliação - O atleta entende os objetivos táticos?',
    },
    {
      'titulo': 'avaliacão - O atleta aplica a estratégia?',
    },
    {
      'titulo': 'avaliacão - O atleta segue o plano de jogo?',
    },
    {
      'titulo': 'Avaliação - O atleta Identifica pontos fortes e fracos?',
    },
    {
      'titulo': 'Avaliação - O atleta é consistente no jogo?',
    },
    {
      'titulo': 'Avaliacão - O atleta se adapta aos adversários',
    },
    {
      'titulo': 'Avaliacão - O atleta se comunica bem?',
    },
    {
      'titulo': 'Avaliacão - O atleta revisa os relatórios pós-jogo',
    },
    {
      'titulo': 'Avaliacão - O atleta recebe e aplica o feedback?',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'Tática',
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const InfoUser(),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          categoria.length,
                          (int index) => CategoriaAvaliacao(
                              titulo: categoria[index]['titulo']),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  const DataAtual(),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ...List.generate(
                          estrelas.length,
                          (int index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ContainersEstrelas(
                                titulo: estrelas[index]['titulo']),
                          ),
                        ),
                      ],
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
