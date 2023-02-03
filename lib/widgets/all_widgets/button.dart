import 'package:flutter/material.dart';

import '../../Pages/cart.dart';
import '../../utils/color.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddToCart(),
            ));
      },
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: MyColors.gold, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: MyColors.white),
          ),
        ),
      ),
    );
  }
}
