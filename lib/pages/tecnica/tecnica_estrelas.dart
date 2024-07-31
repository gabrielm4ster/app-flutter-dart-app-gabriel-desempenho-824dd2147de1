// import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';

import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/Container_estrelas_tecnica.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

import 'package:desempenho_esportivo/_comum/minhas_cores.dart';

class TecnicaEstrelas extends StatelessWidget {
  const TecnicaEstrelas({super.key});

  static final List<Map<String, dynamic>> categoria = [
    {
      'titulo': 'passes',
    },
    {
      'titulo': 'finalização',
    },
    {
      'titulo': 'contr.de bola',
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
      'titulo': 'Avaliação - Conduçao de bola',
    },
    {
      'titulo': 'Avaliação - Recepção de controle',
    },
    {
      'titulo': 'Avaliação - Controle com giro',
    },
    {
      'titulo': 'Avaliação - Conduçao de bola na parede',
    },
    {
      'titulo': 'Avaliação - Controle de bolas Aéreas',
    },
    {
      'titulo': 'Avaliação - Lançamento e domínios',
    },
    {
      'titulo': 'Avaliação - Cabeceio com salto',
    },
    {
      'titulo': 'Avaliação - Cabeceio de posicionamento',
    },
    {
      'titulo': 'Avaliação - Cabeceio com um parceiro',
      // },
      // {
      //   'titulo': 'Avaliação - Cabeceio com salto',
      // },
      // {
      //   'titulo': 'Avaliação - Cabeceio de posicionamento ',
      // },
      // {
      //   'titulo': 'Avaliação - Cabeceio com um parceiro',
    },
    {
      'titulo': 'Avaliação - Drible em velociadade',
    },
    {
      'titulo': 'Avaliação - movimentos de drible especificos',
    },
    {
      'titulo': 'Avaliação - reduzido',
    },
    {
      'titulo': 'Avaliação - Dribles com pressao',
    },
    {
      'titulo': 'Avaliação - Dribles de proteção',
    },
    {
      'titulo': 'Avaliação - Drible de corpo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: const LinearGradient(
            colors: [Color(0xff440D53), Color(0xff07355D)]),
        title: const Text(
          'Técnica',
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
              mainAxisSize: MainAxisSize.min,
              children: [
                const InfoUser(),
                const SizedBox(
                  height: 10,
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
                ...List.generate(
                  estrelas.length,
                  (int index) => ContainerEstrelasTecnica(
                    titulo: estrelas[index]['titulo'],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
