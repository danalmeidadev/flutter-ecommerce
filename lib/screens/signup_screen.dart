import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../components/CustomTextField.dart';
import '../theme/custom_colors.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final cpfFormated = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormated = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatch,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Customtextfield(
                          icon: Icons.email,
                          label: 'Email',
                        ),
                        const Customtextfield(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        const Customtextfield(
                          icon: Icons.person,
                          label: 'Nome',
                        ),
                         Customtextfield(
                          icon: Icons.phone,
                          label: 'Telefone',
                          inputFormatters: [phoneFormated],
                        ),
                         Customtextfield(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormated],
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.customSwatch,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                )),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar usuário',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  //Formulario
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
