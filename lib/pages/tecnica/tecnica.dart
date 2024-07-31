// import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';

import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/avaliacao/avaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

import 'package:desempenho_esportivo/_comum/minhas_cores.dart';

class Tecnica extends StatelessWidget {
  const Tecnica({super.key});

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

  static final List<Map<String, dynamic>> parteDeBaixo = [
    {
      'titulo': 'Avaliação - Domínio e passe',
      'valueBol': 2,
      'descricaoBol': 'Chutes feitos',
      'valueCheck': 2,
      'descricaoCheck': 'Chutes corretos',
      'valueError': 2,
      'descricaoError': 'Chutes errados',
    },
    {
      'titulo': 'Avaliação - Cruzamentos',
      'valueBol': 2,
      'descricaoBol': 'Cruzamentos ',
      'valueCheck': 2,
      'descricaoCheck': 'Cruz. certos',
      'valueError': 2,
      'descricaoError': 'Cruz. errados',
    },
    {
      'titulo': 'Avaliação - Passe na frente',
      'valueBol': 2,
      'descricaoBol': 'Passes na frente',
      'valueCheck': 2,
      'descricaoCheck': 'Passes certos',
      'valueError': 2,
      'descricaoError': 'Passes errados',
    },
    {
      'titulo': 'Avaliação - Chutes dentro da área',
      'valueBol': 2,
      'descricaoBol': 'Chutes feitos',
      'valueCheck': 2,
      'descricaoCheck': 'Chutes certos',
      'valueError': 2,
      'descricaoError': 'Chutes errados',
    },
    {
      'titulo': 'Avaliação - Chutes fora da área',
      'valueBol': 2,
      'descricaoBol': 'Chutes feitos',
      'valueCheck': 2,
      'descricaoCheck': 'Chutes certos',
      'valueError': 2,
      'descricaoError': 'Chutes errados',
    },
    {
      'titulo': 'Avaliação - Pẽnalti',
      'valueBol': 2,
      'descricaoBol': 'Chutes feitos',
      'valueCheck': 2,
      'descricaoCheck': 'Chutes certos',
      'valueError': 2,
      'descricaoError': 'Chutes errados',
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
                  parteDeBaixo.length,
                  (int index) => Avaliacao(
                    titulo: parteDeBaixo[index]['titulo'],
                    valueBol: parteDeBaixo[index]['valueBol'],
                    descricaoBol: parteDeBaixo[index]['descricaoBol'],
                    valueCheck: parteDeBaixo[index]['valueCheck'],
                    descricaoCheck: parteDeBaixo[index]['descricaoCheck'],
                    valueError: parteDeBaixo[index]['valueError'],
                    descricaoError: parteDeBaixo[index]['descricaoError'],
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
