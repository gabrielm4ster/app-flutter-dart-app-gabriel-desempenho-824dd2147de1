import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';

class ContainerEstrelasTecnica extends StatelessWidget {
  const ContainerEstrelasTecnica({
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
                filledColor: MinhasCores.rosa,
                emptyColor: MinhasCores.rosa_escuro,
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
