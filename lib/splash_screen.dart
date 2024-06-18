import 'package:apppets/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    });
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/background.png',
            fit: BoxFit.cover,
            width: 1000,
          ),
          Center(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 42,
                ),
                Image.asset(
                  "images/logo.png",
                  height: 22,
                ),
                const SizedBox(
                  height: 72,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Helping you\nto keep ",
                    style: TextStyle(
                        fontSize: 24,
                        letterSpacing: 3.5 / 100,
                        height: 152 / 100),
                    children: [
                      TextSpan(
                          text: "your bestie",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "\nstay healthy"),
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
