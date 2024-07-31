import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';
import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:desempenho_esportivo/core/ui/widgets/text_inputs_widget.dart';
import 'package:desempenho_esportivo/core/ui/widgets/cadastro_buttom.dart';
import 'package:desempenho_esportivo/core/ui/widgets/social_buttons_widget.dart';
import 'package:desempenho_esportivo/core/ui/widgets/title_cadastro_widget.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    // Definindo a lista de campos de entrada
    final List<Map<String, dynamic>> textInputs = [
      {
        'labelText': 'Nome completo',
        'hintText': 'Digite seu nome',
        'icon': Icons.person_outline,
        'validator': Validatorless.required('Nome é obrigatório.'),
      },
      {
        'labelText': 'E-mail',
        'hintText': 'Digite seu e-mail',
        'icon': Icons.mail_outline,
        'keyboardType': TextInputType.emailAddress,
        'validator': Validatorless.multiple([
          Validatorless.required('E-mail é obrigatório.'),
          Validatorless.email('Utilize um e-mail válido.'),
        ]),
      },
      {
        'labelText': 'Senha',
        'hintText': 'Digite sua senha',
        'icon': Icons.lock_outline,
        'keyboardType': TextInputType.visiblePassword,
        'obscureText': !showPassword,
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
        'validator': Validatorless.required('Senha é obrigatória.'),
      },
      {
        'labelText': 'Confirmar senha',
        'hintText': 'Confirme sua senha',
        'icon': Icons.lock_outline,
        'keyboardType': TextInputType.visiblePassword,
        'obscureText': !showConfirmPassword,
        'suffix': GestureDetector(
          onTap: () {
            setState(() {
              showConfirmPassword = !showConfirmPassword;
            });
          },
          child: Icon(
            showConfirmPassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFF666F7B),
          ),
        ),
        'validator': Validatorless.required('Confirmação de senha é obrigatória.'),
      },
    ];

    return Scaffold(
      backgroundColor: MinhasCores.cinza,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.webp',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleCadastroWidget(), // Usando o widget TitleWidget
                    _buildLoginPrompt(), // Método para o prompt de login
                    TextInputsWidget(textInputs: textInputs), // Usando o widget TextInputsWidget
                    const CadastroButtom(), // Usando o widget SignUpButtonWidget
                    const SizedBox(height: 20),
                    const SocialButtonsWidget(), // Usando o widget SocialButtonsWidget
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginPrompt() {
    return Column(
      children: [
        const Align(
          child: Text(
            'já tem uma conta?',
            style: TextStyle(
              color: MinhasCores.branco,
              fontFamily: 'outfit',
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontFamily: 'Outfit',
            ),
          ),
          onPressed: () {
            // Navegar para a página de login
          },
          child: const Text(
            'Entre',
            style: TextStyle(color: MinhasCores.azul),
          ),
        ),
      ],
    );
  }
}
