import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoria_Idade.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/containers_info_alunos.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class PassaporteB extends StatelessWidget {
  const PassaporteB({super.key});
  static final List<Map<String, dynamic>> idade = [
    {
      'titulo': 'Sub 13',
    },
    {
      'titulo': 'Sub 15',
    },
    {
      'titulo': 'Sub 16',
    },
    {
      'titulo': 'Sub 17',
    },
    {
      'titulo': 'Sub 18',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: Meugradiente.gradiente,
        title: const Text(
          'Passaporte.B',
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
            scrollDirection: Axis.vertical,
            child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
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
                            idade.length,
                            (int index) =>
                                CategoriaIdade(titulo: idade[index]['titulo']),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    const DataAtual(),
                    const ContainersInfoAlunos()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
