import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class TitleLoginWidget extends StatelessWidget {
  const TitleLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: MinhasCores.branco,
          fontFamily: 'StretchPro',
          fontSize: 20,
        ),
      ),
    );
  }
}
