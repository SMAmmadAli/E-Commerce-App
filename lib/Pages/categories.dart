import 'package:flutter/material.dart';
import 'package:st_store/data/data.dart';
import 'package:st_store/utils/color.dart';
import 'package:st_store/widgets/home_page_widget/my_listview2.dart';

class MyCategoriesView extends StatelessWidget {
  const MyCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 25,
          color: MyColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (Map map in selectItem)
              Container(
                height: 370,
                width: 345,
                child: Column(
                  children: [
                    Container(
                      height: 305,
                      width: 245,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 90,
                              child: Container(
                                  height: 170,
                                  width: 345,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(map['title']),
                                      Text(map['subTitle'])
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF3F6F8),
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.elliptical(32, 80),
                                        right: Radius.elliptical(32, 80),
                                      )))),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image(image: AssetImage(map["image"])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            MyListView2()
          ],
        ),
      ),
    );
  }
}
