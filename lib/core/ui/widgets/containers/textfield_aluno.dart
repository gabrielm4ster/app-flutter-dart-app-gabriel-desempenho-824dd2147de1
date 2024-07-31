import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:gradient_icon/gradient_icon.dart';

class TextfieldAluno extends StatelessWidget {
  const TextfieldAluno({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        suffixIcon: GradientIcon(
          icon: Icons.search,
          gradient: Meugradiente.gradiente,
        ),
        border: GradientOutlineInputBorder(
          gradient: Meugradiente.gradiente,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
    // return SizedBox(
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //     shape: BoxShape.rectangle,
    //     borderRadius: BorderRadius.all(Radius.circular(13)),
    //     border: GradientBoxBorder(
    //       gradient: LinearGradient(
    //         colors: [Color(0xFF981DB9), Color(0xFF0F76CE)],
    //       ),
    //     ),
    //   ),
    //   child: TextFormField(),
    // );
  }
}
