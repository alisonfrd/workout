import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:workout_app/shared/inputs/input_email.dart';
import 'package:workout_app/shared/inputs/input_password.dart';
import 'package:flutter/src/painting/gradient.dart' as gradient;

import '../../../../shared/buttons/facebook_btn.dart';
import '../../../../shared/buttons/google_btn.dart';
import '../../../../shared/buttons/login_btn.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Lottie.asset('assets/lotties/run_atletic_lottie.json',
                      height: 200, width: 200)),
              Positioned(
                top: 0,
                right: -100,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .50,
                  width: MediaQuery.of(context).size.height * .50,
                  child: const RotationTransition(
                      turns: AlwaysStoppedAnimation(-40 / 360),
                      child:
                          RiveAnimation.asset('assets/rive/rocket_rive.riv')),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - kToolbarHeight,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: GoogleFonts.slabo27px(
                                fontSize: 64, color: const Color(0xff220126)),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Faça o login para acessar sua area de treinos, cumpra seus objetivos e ganhe recompensas',
                            style: GoogleFonts.slabo27px(
                                fontSize: 21,
                                fontWeight: FontWeight.w300,
                                color: const Color(0xff220126)),
                          ),
                          const SizedBox(height: 32),
                          const InputEmail(),
                          const SizedBox(height: 16),
                          const InputPassword(),
                          const SizedBox(height: 16),
                          Align(
                              alignment: Alignment.center,
                              child: LoginBtn(
                                onTap: () async {
                                  Modular.to.navigate('/home/');
                                },
                              )),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Criar conta',
                                style: GoogleFonts.slabo27px(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff220126)),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Expanded(
                                  child: Divider(
                                color: Colors.black,
                              )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'ou',
                                  style: GoogleFonts.slabo27px(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                              ),
                              const Expanded(
                                  child: Divider(
                                color: Colors.black,
                              )),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              GoogleBtn(),
                              SizedBox(width: 16),
                              FacebookBtn(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
