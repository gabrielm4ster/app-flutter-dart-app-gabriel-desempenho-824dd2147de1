import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';

class DataAtual extends StatelessWidget {
  const DataAtual({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 150,
      decoration: const BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [Color(0xFF981DB9), Color(0xFF0F76CE)],
          ),
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(23),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dia ${DateFormat('dd/MM/yyyy').format(DateTime.now())}',
            style: const TextStyle(
                color: MinhasCores.branco, fontSize: 15, fontFamily: 'outfit'),
          ),
          const Icon(
            Icons.check,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
