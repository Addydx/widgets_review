import 'package:flutter/material.dart';

class CurstomFormField extends StatelessWidget {
  final String? hintText;
  final String labelText;
  final String? helperText;
  final IconData icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Map<String, dynamic> myForm;
  final String keyForm;

  const CurstomFormField({
    super.key,
    this.hintText,
    required this.labelText,
    this.helperText,
    required this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.myForm,
    required this.keyForm,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //initialValue: 'Kindly',
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (c) {
        myForm[keyForm] = c;
      },
      validator: (value) {
        if (value == null) return 'Campo requerido';
        //if(value.length < 4) return 'Tamaño minimo de 4';
        value.length < 4 ? 'Tamaño minimo de 4' : null;
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: 'Hasta 4',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.supervised_user_circle_outlined),
        icon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}