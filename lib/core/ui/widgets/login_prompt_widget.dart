import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class LoginPromptWidget extends StatelessWidget {
  const LoginPromptWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          child: Text(
            'já tem uma conta?',
            style: TextStyle(
              color: MinhasCores.branco,
              fontFamily: 'Outfit',
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontFamily: 'Outfit',
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Entre',
            style: TextStyle(color: MinhasCores.azul),
          ),
        ),
      ],
    );
  }
}
