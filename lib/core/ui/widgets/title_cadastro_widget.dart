import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class TitleCadastroWidget extends StatelessWidget {
  const TitleCadastroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      child: Text(
        'CADASTRE-SE',
        style: TextStyle(
          color: MinhasCores.branco,
          fontFamily: 'StretchPro',
          fontSize: 20,
        ),
      ),
    );
  }
}
