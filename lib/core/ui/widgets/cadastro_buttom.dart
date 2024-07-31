import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class CadastroButtom extends StatelessWidget {
  const CadastroButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: MinhasCores.rosa,
          ),
          onPressed: () {},
          child: const Text(
            'Cadastrar',
            style: TextStyle(color: MinhasCores.branco),
          ),
        ),
      ),
    );
  }
}
