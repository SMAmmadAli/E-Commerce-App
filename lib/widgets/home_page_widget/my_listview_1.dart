import 'package:flutter/material.dart';
import 'package:st_store/utils/color.dart';

import '../../Pages/categories.dart';
import '../../data/data.dart';

MyListView() {
  return Padding(
    padding: const EdgeInsets.only(left: 35.0),
    child: Container(
      height: 250,
      width: 250,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 205,
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    child: GestureDetector(
                      onTap: () {
                        selectItem.add(products[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyCategoriesView(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 205,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColors.gold, width: 2),
                            color: MyColors.sky,
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.elliptical(32, 80),
                                left: Radius.elliptical(32, 80))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              products[index]['title'],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: MyColors.gold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              products[index]['subTitle'],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: MyColors.gold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image(image: AssetImage(products[index]["image"])),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: products.length),
    ),
  );
}
