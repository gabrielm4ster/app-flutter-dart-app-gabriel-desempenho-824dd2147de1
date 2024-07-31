import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/pages/avaliacoes_page.dart';
import 'package:desempenho_esportivo/pages/gestao/gestao_de_carreira.dart';
import 'package:desempenho_esportivo/pages/home_page.dart';
import 'package:desempenho_esportivo/pages/passaporte_b.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [MinhasCores.rosa, MinhasCores.azul])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: 27,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Home',
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: 27,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AvaliacoesPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.sports_soccer,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'avaliacoes',
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: 27,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const PassaporteB(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.assignment_ind_outlined,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'passaporte.B',
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  iconSize: 27,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const GestaoDeCarreira(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'gestão',
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
