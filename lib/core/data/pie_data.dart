import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(item: 'chutes acertados', porcentagem: 50, color: MinhasCores.azul),
    Data(item: 'chutes errados', porcentagem: 50, color: MinhasCores.rosa),
  ];
}

class Data {
  final String item;

  final double porcentagem;

  final Color color;

  Data({required this.item, required this.porcentagem, required this.color});
}
