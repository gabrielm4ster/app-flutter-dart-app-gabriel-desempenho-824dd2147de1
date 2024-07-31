import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/app_bar/app_bar_button.dart';
import 'package:desempenho_esportivo/core/ui/widgets/data_atual/dataAtual.dart';
import 'package:desempenho_esportivo/core/ui/widgets/info_user/info_user.dart';
import 'package:desempenho_esportivo/core/ui/widgets/row_emojis.dart';
import 'package:desempenho_esportivo/core/ui/widgets/timer/count_up_timer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:gradient_icon/gradient_icon.dart';

class FisicaPageTimer extends StatelessWidget {
  const FisicaPageTimer({super.key});
  static final List<Map<String, dynamic>> emojirow = [
    {
      'porcentagemrow': '0-16%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
    },
    {
      'porcentagemrow': '17-33%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
    },
    {
      'porcentagemrow': '34-50%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
    },
    {
      'porcentagemrow': '51-67%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
    },
    {
      'porcentagemrow': '68-84%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
    },
    {
      'porcentagemrow': '100%',
      'icone': const GradientIcon(
          icon: Icons.mood, size: 40, gradient: Meugradiente.gradiente),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const InfoUser(),
                  const DataAtual(),
                  const Text(
                    'Avaliacao Sprint 10M',
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          emojirow.length,
                          (int index) => RowEmojis(
                              porcentagemrow: emojirow[index]['porcentagemrow'],
                              icone: emojirow[index]['icone']),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  CountUpTimerWidget(),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'salvar',
                      style: TextStyle(fontFamily: 'StretchPro'),
                    ),
                  ), // Adicionando o widget do cronômetro aqui
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBarButton(),
    );
  }
}
