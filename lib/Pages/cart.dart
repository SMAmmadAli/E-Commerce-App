import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_store/data/data.dart';

import '../utils/color.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: MyColors.gold,
                    )),
                Text(
                  "MY CART",
                  style: TextStyle(
                      color: MyColors.gold,
                      letterSpacing: 3,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.slider_horizontal_3,
                      color: MyColors.gold,
                    )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                  color: MyColors.sky, borderRadius: BorderRadius.circular(24)),
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading:
                          Image(image: AssetImage(products[index]['image'])),
                      title: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            products[index]['title'],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: MyColors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Color",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: MyColors.gold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Size",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: MyColors.gold),
                              ),
                            ],
                          )
                        ],
                      ),
                      subtitle: Text(products[index]['price']),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
