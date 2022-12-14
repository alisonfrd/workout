import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Color(0xff4F0259)),
      validator: (value) {
        if (EmailValidator.validate(value.toString()) == false) {
          return 'Email inválido';
        }
      },
      cursorColor: const Color(0xff4F0259),
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.email,
          color: Color(0xff4F0259),
        ),
        labelText: 'Email',
        labelStyle: const TextStyle(color: Color(0xff4F0259)),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff4F0259),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff4F0259),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff4F0259),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff4F0259),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff4F0259),
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
