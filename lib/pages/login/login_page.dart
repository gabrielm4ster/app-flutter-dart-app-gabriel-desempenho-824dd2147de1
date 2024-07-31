import 'package:desempenho_esportivo/core/ui/widgets/divider_with_text.dart';
import 'package:desempenho_esportivo/core/ui/widgets/login_buttom.dart';
import 'package:desempenho_esportivo/core/ui/widgets/login_prompt_widget.dart';
import 'package:desempenho_esportivo/core/ui/widgets/social_buttons_widget.dart';
import 'package:desempenho_esportivo/core/ui/widgets/text_inputs_widget.dart';
import 'package:desempenho_esportivo/core/ui/widgets/title_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    // Exemplo de lista de entradas de texto
    final List<Map<String, dynamic>> textInputs = [
      {
        'labelText': 'Email',
        'hintText': 'Digite seu email',
        'icon': Icons.email,
        'keyboardType': TextInputType.emailAddress,
        'validator': (value) => value!.isEmpty ? 'Campo obrigatório' : null,
      },
      {
        'labelText': 'Senha',
        'hintText': 'Digite sua senha',
        'icon': Icons.lock,
        'keyboardType': TextInputType.visiblePassword,
        'obscureText': !showPassword,
        'validator': (value) => value!.isEmpty ? 'Campo obrigatório' : null,
        'suffix': GestureDetector(
          onTap: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFF666F7B),
          ),
        ),
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.webp',
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    height: 100,
                    color: Colors.transparent,
                  ),
                  const TitleLoginWidget(),
                  const LoginPromptWidget(),
                  TextInputsWidget(textInputs: textInputs),
                  const LoginButtom(),
                  DividerWithText(),
                  const SocialButtonsWidget(),
                  Divider(
                    height: 250,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
