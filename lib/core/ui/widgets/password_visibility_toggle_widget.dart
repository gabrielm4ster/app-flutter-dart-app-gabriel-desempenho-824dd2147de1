import 'package:flutter/material.dart';

class PasswordVisibilityToggleWidget extends StatelessWidget {
  final bool showPassword;
  final VoidCallback onToggle;

  const PasswordVisibilityToggleWidget({
    Key? key,
    required this.showPassword,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 2.0,
        ),
        child: Icon(
          showPassword ? Icons.visibility : Icons.visibility_off,
          color: const Color(0xFF666F7B),
        ),
      ),
    );
  }
}
