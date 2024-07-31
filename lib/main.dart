// ignore_for_file: unused_import
import 'package:desempenho_esportivo/core/ui/widgets/avaliacao/avaliacao.dart';
import 'package:desempenho_esportivo/core/ui/widgets/containers/faixa_etaria.dart';
import 'package:desempenho_esportivo/pages/fisica/fisica_page.dart';
import 'package:desempenho_esportivo/pages/fisica/fisica_page_timer.dart';
import 'package:desempenho_esportivo/pages/gestao/gestao_de_carreira.dart';
import 'package:desempenho_esportivo/pages/saude/saude.dart';
import 'package:desempenho_esportivo/pages/saude/saude_page_open.dart';
import 'package:desempenho_esportivo/pages/tecnica/datas.dart';
import 'package:desempenho_esportivo/pages/tecnica/tecnica_estrelas.dart';
import 'package:desempenho_esportivo/pages/tecnica/tecnica_grafico_pizza.dart';
import 'package:flutter/material.dart';

import 'package:desempenho_esportivo/pages/tecnica/tecnica.dart';
import 'package:desempenho_esportivo/pages/avaliacoes_page.dart';
import 'package:desempenho_esportivo/pages/cadastro/cadastro_page.dart';
import 'package:desempenho_esportivo/pages/escolha_de_escola.dart';
import 'package:desempenho_esportivo/pages/escolha_de_esporte.dart';
import 'package:desempenho_esportivo/pages/faixa_etaria/faixa_etaria_page.dart';
import 'package:desempenho_esportivo/pages/home_page.dart';
import 'package:desempenho_esportivo/pages/login/login_page.dart';
import 'package:desempenho_esportivo/pages/passaporte_b.dart';
import 'package:desempenho_esportivo/pages/psicologica.dart';
import 'package:desempenho_esportivo/pages/tatica/tatica.dart';
import 'package:desempenho_esportivo/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app teste',
      home: LoginPage(),
    );
  }
}
