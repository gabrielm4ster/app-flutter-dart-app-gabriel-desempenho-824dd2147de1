import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class EscolhaDeEscola extends StatelessWidget {
  const EscolhaDeEscola({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Padding(
                padding: EdgeInsets.only(top: 104.0, left: 40, right: 40),
                child: Text(
                  '''  QUAL ESCOLA VOCÊ DA TREINO?''',
                  style: TextStyle(
                    color: MinhasCores.branco,
                    fontFamily: 'StretchPro',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 187),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 165.76,
                        height: 156.46,
                        child: Image.asset('assets/images/flamengo.webp'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Escola ',
                        style: TextStyle(
                          color: MinhasCores.branco,
                          fontFamily: 'StretchPro',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Text(
                      'flamengo ',
                      style: TextStyle(
                        color: MinhasCores.branco,
                        fontFamily: 'StretchPro',
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
