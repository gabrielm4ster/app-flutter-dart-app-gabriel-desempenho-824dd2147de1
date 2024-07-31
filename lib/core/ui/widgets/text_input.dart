// text_input.dart
import 'package:flutter/material.dart';
import 'package:desempenho_esportivo/_comum/minhas_cores.dart';

Widget textInput({
  TextEditingController? controller,
  Widget? label,
  String? labelText,
  String? hintText,
  IconData? icon,
  void Function(String)? onChanged,
  String? initialValue,
  String? Function(String?)? validator,
  TextInputType? keyboardType,
  bool obscureText = false,
  Widget? suffix,
  double? width,
  double? height,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7.0),
    child: TextFormField(
      controller: controller,
      initialValue: initialValue,
      onChanged: onChanged,
      style: const TextStyle(
        color: MinhasCores.cinza_claro,
        fontSize: 16,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10.0),
        label: label,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        fillColor: MinhasCores.cinza,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: icon != null ? Icon(icon) : null,
        filled: true,
        hintStyle: TextStyle(
          color: const Color(0xFF666F7B).withOpacity(0.4),
        ),
        suffix: suffix,
      ),
    ),
  );
}
