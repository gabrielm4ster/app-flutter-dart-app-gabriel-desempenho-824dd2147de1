import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class EscolhaDeEsporte extends StatelessWidget {
  const EscolhaDeEsporte({super.key});

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
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 104.0, left: 40),
                  child: Text(
                    ''' QUAL ESPORTE VOCÊ DA TREINO?''',
                    style: TextStyle(
                      color: MinhasCores.branco,
                      fontFamily: 'StretchPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                        width: 165.76,
                        height: 156.46,
                        child: Image.asset('assets/images/Futebol.webp')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'futebol',
                      style: TextStyle(
                        color: MinhasCores.branco,
                        fontFamily: 'StretchPro',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                        width: 165.76,
                        height: 156.46,
                        child: Image.asset('assets/images/Basquete.webp')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'basquete',
                      style: TextStyle(
                        color: MinhasCores.branco,
                        fontFamily: 'StretchPro',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 165.76,
                      height: 156.46,
                      child: Image.asset('assets/images/Volei.webp'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'vôlei',
                      style: TextStyle(
                        color: MinhasCores.branco,
                        fontFamily: 'StretchPro',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
