import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_store/Pages/cart.dart';
import 'package:st_store/data/data.dart';
import 'package:st_store/widgets/all_widgets/button.dart';

import '../utils/color.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.sky,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.sky,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: MyColors.gold,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: MyColors.gold,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (Map i in selectItem)
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 120,
                          right: 0,
                          child: Image(
                            image: AssetImage(i['image']),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Speakers",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Beosound",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "From",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "\$1,600",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Available Colors",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Wireless, smart home speaker",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 10),
                      child: Text(
                        "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: MyColors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(text: "ADD TO CART"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
