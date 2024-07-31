import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ContainersInfoAlunos extends StatelessWidget {
  const ContainersInfoAlunos({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(40),
        width: 300,
        height: 200,
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
      ),
    );
  }
}
