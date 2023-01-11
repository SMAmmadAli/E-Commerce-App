import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'asset/image/Oval 1.png',
                        width: 160,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230.0),
                  child: Image.asset(
                    'asset/image/Oval.png',
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 30),
                  child: Image.asset(
                    'asset/image/bg image.png',
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Welcome to STStore !',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              )
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      'With long experience in the audio industry,',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      'we create the best quality products',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xffC6AB59),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 100.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 22,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
