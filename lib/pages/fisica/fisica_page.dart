import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/container_fisica.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:gradient_icon/gradient_icon.dart';

class FisicaPage extends StatelessWidget {
  const FisicaPage({super.key});
  static final List<Map<String, dynamic>> categoria = [
    {
      'titulo': 'Força',
    },
    {
      'titulo': 'Velocidade',
    },
    {
      'titulo': 'Flexibilidade',
    },
    {
      'titulo': '',
    },
    {
      'titulo': '',
    },
  ];
  static final List<Map<String, dynamic>> avaliacao = [
    {
      'titulo': 'avaliacao',
      'porcentagem': '100%',
      'icone': const GradientIcon(
        icon: Icons.mood,
        gradient: Meugradiente.gradiente,
        size: 50,
      ),
      'teste': 'Sprint 10M',
    },
    {
      'titulo': 'avaliacao',
      'porcentagem': '68-84%',
      'icone': const GradientIcon(
        icon: Icons.mood,
        gradient: Meugradiente.gradiente,
        size: 50,
      ),
      'teste': 'Teste de cooper',
    },
    {
      'titulo': 'avaliacao',
      'porcentagem': '51-67%',
      'icone': const GradientIcon(
        icon: Icons.mood,
        gradient: Meugradiente.gradiente,
        size: 50,
      ),
      'teste': 'VO2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.cinza,
      appBar: GradientAppBar(
        gradient:
            const LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul]),
        title: const Text(
          'Física',
          style: TextStyle(fontFamily: 'StretchPro', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.webp',
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const InfoUser(),
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
                    const DataAtual(),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ...List.generate(
                            avaliacao.length,
                            (int index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: ContainerFisica(
                                titulo: avaliacao[index]['titulo'],
                                porcentagem: avaliacao[index]['porcentagem'],
                                icone: avaliacao[index]['icone'],
                                teste: avaliacao[index]['teste'],
                              ),
                            ),
                          ),
                        ],
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
