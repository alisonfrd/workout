import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({super.key});

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: const TextStyle(color: Color(0xff4F0259)),
      validator: (value) {},
      cursorColor: const Color(0xff4F0259),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.remove_red_eye,
              color: const Color(0xff4F0259)),
          onPressed: () => setState(() {
            obscureText = !obscureText;
          }),
        ),
        labelText: 'Senha',
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
