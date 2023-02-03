import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_store/data/data.dart';
import 'package:st_store/widgets/all_widgets/list_tile_inCart.dart';

import '../utils/color.dart';

class AddToCart extends StatefulWidget {
  AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  num addNumber = 1;
  num total = 1600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              for (Map i in selectItem)
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        color: MyColors.sky,
                        border: Border.all(color: MyColors.grey, width: 1),
                        borderRadius: BorderRadius.circular(24)),
                    child: ListView.builder(
                        itemCount: selectItem.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: Image(image: AssetImage(i['image'])),
                            title: Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, right: 20),
                              child: Column(
                                children: [
                                  Text(
                                    i['title'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: MyColors.black),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Color",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: MyColors.gold),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.check_box_outline_blank,
                                        color: MyColors.grey,
                                        size: 15,
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
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.check_box_outline_blank,
                                        color: MyColors.white,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            subtitle: Column(
                              children: [
                                Text(i["price"]),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (addNumber < 1) {
                                            addNumber == 0;
                                          } else {
                                            addNumber = --addNumber;
                                          }
                                        });
                                      },
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.gold),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: MyColors.gold,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        '$addNumber',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.white),
                                      )),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          addNumber = ++addNumber;
                                        });
                                      },
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: MyColors.gold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        })),
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              CartListTile(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: MyColors.black,
                  size: 50,
                ),
                title: "Shipping",
                subtitle: "2-3 days",
                icon1: Icon(
                  Icons.arrow_downward_rounded,
                  color: MyColors.black,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CartListTile(
                  icon: Icon(
                    Icons.percent,
                    color: MyColors.black,
                    size: 50,
                  ),
                  title: "Promo Code",
                  subtitle: "- \$100.00",
                  icon1: Icon(
                    Icons.check,
                    color: MyColors.black,
                    size: 30,
                  )),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                color: Color(0xffF3F6F8),
                thickness: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: MyColors.grey)),
                  Text("\$${total * addNumber}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: MyColors.grey)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: MyColors.gold,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: MyColors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
