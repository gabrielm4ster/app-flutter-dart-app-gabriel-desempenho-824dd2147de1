import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/data/pie_data.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/categorias/categoriaAvaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class TecnicaGraficoPizza extends StatelessWidget {
  const TecnicaGraficoPizza({super.key});
  static final List<Map<String, dynamic>> desempenho = [
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
  List<PieChartSectionData> getSections() => PieData.data
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final value = PieChartSectionData(
            color: data.color,
            value: data.porcentagem,
            title: '${data.porcentagem}%',
            titleStyle:
                const TextStyle(fontSize: 16, color: MinhasCores.branco));
        return MapEntry(index, value);
      })
      .values
      .toList();
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
              'assets/images/background.webp',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              const InfoUser(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      desempenho.length,
                      (int index) => CategoriaAvaliacao(
                          titulo: desempenho[index]['titulo']),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.transparent,
              ),
              const DataAtual(),
              const Divider(
                height: 120,
                color: Colors.transparent,
              ),
              SizedBox(
                height: 0,
                width: 0,
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: true,
                    ),
                    sectionsSpace: 1,
                    centerSpaceRadius: 60,
                    sections: getSections(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
