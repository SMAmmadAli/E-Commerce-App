import 'package:flutter/material.dart';

class MyHeading extends StatelessWidget {
  final String heading;
  const MyHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.0),
      child: Center(
        child: Text(
          heading,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
