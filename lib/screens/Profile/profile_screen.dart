import 'package:ecommerce/components/CustomTextField.dart';
import 'package:flutter/material.dart';
import '../../mock/data_item.dart' as app_data;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Perfil do Usuário',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          // Email
          Customtextfield(
            initialValue: app_data.user.email,
            readOnly: true,
            label: 'E-mail',
            icon: Icons.email,
          ),

          // Nome
          Customtextfield(
            initialValue: app_data.user.name,
            readOnly: true,
            label: 'Nome',
            icon: Icons.person,
          ),

          // Celular
          Customtextfield(
            initialValue: app_data.user.phone,
            readOnly: true,
            label: 'Celular',
            icon: Icons.phone,
          ),

          // CPF
          Customtextfield(
            initialValue: app_data.user.cpf,
            readOnly: true,
            label: 'CPF',
            icon: Icons.file_copy,
            isSecret: true,
          ),

          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                color: Colors.green,
              )),
              onPressed: () {
                updatePassowrd();
              },
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassowrd() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Atualização de senha',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Customtextfield(
                      label: 'Senha atual',
                      icon: Icons.lock,
                      isSecret: true,
                    ),
                   const Customtextfield(
                      label: 'Nova senha',
                      icon: Icons.lock_outline,
                      isSecret: true,
                    ),
                   const Customtextfield(
                      label: 'Confirme a nova senha',
                      icon: Icons.lock_outline,
                      isSecret: true,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text(
                          'Atualizar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
