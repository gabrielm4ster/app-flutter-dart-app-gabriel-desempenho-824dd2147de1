import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ContainersEstrelas extends StatelessWidget {
  const ContainersEstrelas({
    super.key,
    required this.titulo,
  });
  final String titulo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Color(0xFF981DB9),
                Color(0xFF0F76CE),
              ],
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Text(
                titulo,
                style: const TextStyle(
                    color: MinhasCores.branco,
                    fontFamily: 'outfit',
                    fontSize: 14),
              ),
              AnimatedRatingStars(
                filledColor: MinhasCores.azul,
                emptyColor: Colors.grey,
                filledIcon: Icons.star,
                onChanged: (double) {},
                customFilledIcon: Icons.star,
                customHalfFilledIcon: Icons.star,
                customEmptyIcon: Icons.star,
                starSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
