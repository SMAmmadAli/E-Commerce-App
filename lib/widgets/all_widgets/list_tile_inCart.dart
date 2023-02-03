import 'package:flutter/material.dart';
import 'package:st_store/utils/color.dart';

class CartListTile extends StatelessWidget {
  final Icon icon;
  final Icon icon1;
  final String title;
  final String subtitle;

  const CartListTile(
      {super.key,
      required this.icon,
      required this.icon1,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width * 0.84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: MyColors.gold, width: 2),
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: MyColors.gold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.green.shade600),
        ),
        trailing: icon1,
      ),
    );
  }
}
