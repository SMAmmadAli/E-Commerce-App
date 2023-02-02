import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_store/utils/myimage.dart';

import '../utils/color.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.sky,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    right: 0,
                    child: Image(
                      image: AssetImage(MyImage.micimg1),
                      width: 200,
                      height: 300,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            color: MyColors.gold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0, top: 5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.slider_horizontal_3,
                            color: MyColors.gold,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 100),
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
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: MyColors.gold,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: MyColors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
