import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/containers_estrelas.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Psicologica extends StatelessWidget {
  const Psicologica({super.key});
  static final List<Map<String, dynamic>> categoria = [
    {
      'titulo': 'foco',
    },
    {
      'titulo': 'confiança',
    },
    {
      'titulo': 'resiliẽncia',
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
      'titulo': 'avaliação - o atleta está concentrado?',
    },
    {
      'titulo': 'avaliacão - O atleta está reagindo rápido?',
    },
    {
      'titulo': 'avaliacão - Velocidade de reação é boa?',
    },
    {
      'titulo': 'Avaliação - O atleta parece confiante?',
    },
    {
      'titulo': 'Avaliação - Ele parece seguro de suas decisões?',
    },
    {
      'titulo': 'Avaliacão - Ele confia em sua equipe?',
    },
    {
      'titulo': 'Avaliacão - Ele trata seus colegas com respeito?',
    },
    {
      'titulo': 'Avaliacão - Ele é respeitoso com os árbitros?',
    },
    {
      'titulo': 'Avaliacão - Ele mostra respeito pelos treinadores?',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'Psicólogica',
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
                          (int index) => ContainersEstrelas(
                              titulo: estrelas[index]['titulo']),
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
