import 'package:flutter/material.dart';
import 'package:st_store/utils/color.dart';

import '../../data/data.dart';

MyListView2() {
  return Padding(
    padding: const EdgeInsets.only(left: 35.0),
    child: Container(
      height: 220,
      width: 250,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 220,
              width: 145,
              decoration: BoxDecoration(
                  border: Border.all(color: MyColors.gold, width: 2),
                  color: MyColors.sky,
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      products[index]['image'],
                      width: 100,
                      height: 150,
                    ),
                  ),
                  Text(
                    products[index]['title'],
                    style: TextStyle(
                        color: MyColors.gold,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    products[index]['subTitle'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: MyColors.gold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemCount: products.length),
    ),
  );
}
