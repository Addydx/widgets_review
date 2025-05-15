import 'package:flutter/material.dart';
import 'package:widgets_review/widgets/custom_form_field.dart';

class InputFieldScreen extends StatelessWidget {
  const InputFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> myForm = {
      'nombre': 'Aloha',
      'apellidos': '',
      'email': 'test@gmail.com',
      'password': 'secret',
    };
    //que tipos de datos se pasan por referencia en dart

    return Scaffold(
      appBar: AppBar(title: Text('Input Screen')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: key,
            child: Column(
              children: [
                SizedBox(height: 10),
                CurstomFormField(
                  labelText: 'Nombre',
                  icon: Icons.person,
                  myForm: myForm,
                  keyForm: 'nombre',
                ),
                SizedBox(height: 10),
                CurstomFormField(
                  labelText: 'Apellido Pat',
                  icon: Icons.abc,
                  myForm: myForm,
                  keyForm: 'apellidos',
                ),
                SizedBox(height: 10),
                CurstomFormField(
                  labelText: 'Email',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  myForm: myForm,
                  keyForm: 'email',
                ),
                SizedBox(height: 10),
                CurstomFormField(
                  labelText: 'Password',
                  icon: Icons.key,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  myForm: myForm,
                  keyForm: 'password',
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print(myForm);
                    },
                    child: Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}