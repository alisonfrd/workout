import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart' as gradient;
import 'package:lottie/lottie.dart';

class GoogleBtn extends StatefulWidget {
  const GoogleBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleBtn> createState() => _GoogleBtnState();
}

class _GoogleBtnState extends State<GoogleBtn> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          isLoading = true;
        });
        await Future.delayed(const Duration(seconds: 6));
        setState(() {
          isLoading = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isLoading ? Colors.white : null,
          gradient: isLoading
              ? null
              : const gradient.LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff4F0259),
                    Color(0xff220126),
                    Color(0xffD762D9),
                  ],
                ),
        ),
        child: isLoading
            ? Lottie.asset('assets/lotties/google_loading_lottie.json')
            : Image.asset(
                'assets/png/google_icon.png',
              ),
      ),
    );
  }
}
