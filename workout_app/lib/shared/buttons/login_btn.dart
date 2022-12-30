import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart' as gradient;
import 'package:google_fonts/google_fonts.dart';

class LoginBtn extends StatefulWidget {
  final VoidCallback onTap;
  const LoginBtn({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LoginBtn> createState() => _LoginBtnState();
}

class _LoginBtnState extends State<LoginBtn> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          selected = !selected;
        });
        // await Future.delayed(const Duration(seconds: 5));
        widget.onTap();
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 48,
        width: selected ? 48 : MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const gradient.LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff260273),
              Color(0xff220126),
              Color(0xff4F0259),
            ],
          ),
        ),
        child: Center(
          child: selected
              ? const CircularProgressIndicator(
                  backgroundColor: Color(0xff4F0259),
                  color: Colors.white,
                )
              : Text(
                  'Entrar',
                  style:
                      GoogleFonts.slabo27px(fontSize: 21, color: Colors.white),
                ),
        ),
      ),
    );
  }
}
