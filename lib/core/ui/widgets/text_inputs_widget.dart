import 'package:flutter/material.dart';

// Certifique-se de que o caminho esteja correto para o widget textInput
import 'text_input.dart';

class TextInputsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> textInputs;

  const TextInputsWidget({Key? key, required this.textInputs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(textInputs.length, (index) {
        final input = textInputs[index];
        return textInput(
          labelText: input['labelText'] ?? '',
          hintText: input['hintText'] ?? '',
          icon: input['icon'],
          keyboardType: input['keyboardType'] ?? TextInputType.text,
          obscureText: input['obscureText'] ?? false,
          suffix: input['suffix'] ?? SizedBox.shrink(), // Default to an empty widget if not provided
          validator: input['validator'] ?? (value) => null,
          controller: input['controller'], // This should be a TextEditingController
          initialValue: input['initialValue'],
          onChanged: input['onChanged'] ?? (value) {},
        );
      }),
    );
  }
}
