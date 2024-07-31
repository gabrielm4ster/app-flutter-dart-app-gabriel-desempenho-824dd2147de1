import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MinhasCores.cinza,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background2.webp',
              fit: BoxFit.fill,
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'sejam bem vindo ao',
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontFamily: 'StretchPro',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    child: Image(image: AssetImage('')),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
