import 'package:desempenho_esportivo/core/ui/widgets/elevated_buttom_image_prefix.dart';
import 'package:flutter/material.dart';
class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ElevatedButtomImagePrefix(
          titulo: 'Continuar com Google',
          imagem: Image(
            height: 30,
            image: AssetImage('assets/images/google.webp'),
          ),
        ),
        ElevatedButtomImagePrefix(
          titulo: 'Continuar com Facebook',
          imagem: Image(
            height: 30,
            image: AssetImage('assets/images/facebook.webp'),
          ),
        ),
      ],
    );
  }
}
