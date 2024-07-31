import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class ElevatedButtomImagePrefix extends StatelessWidget {
  const ElevatedButtomImagePrefix({
    super.key,
    required this.titulo,
    required this.imagem,
  });

  final String titulo;
  final Image imagem;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: MinhasCores.branco,
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajuste o padding conforme necessário
      ),
      onPressed: () {},
      child: Row(
        children: [
          imagem, // Imagem no início
          SizedBox(width: 10), // Espaçamento entre a imagem e o texto
          Expanded(
            child: Center(
              child: Text(
                titulo,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
