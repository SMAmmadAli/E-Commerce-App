import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_store/Pages/single_product.dart';
import 'package:st_store/data/data.dart';
import 'package:st_store/utils/color.dart';
import 'package:st_store/utils/mytext.dart';
import 'package:st_store/widgets/home_page_widget/my_listview2.dart';

class MyCategoriesView extends StatefulWidget {
  const MyCategoriesView({super.key});

  @override
  State<MyCategoriesView> createState() => _MyCategoriesViewState();
}

class _MyCategoriesViewState extends State<MyCategoriesView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.gold,
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: MyColors.black,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                  for (Map mytitle in selectItem)
                    Text(
                      mytitle['title'],
                      style: TextStyle(
                          color: MyColors.gold,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0),
                    ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.slider_horizontal_3,
                        color: MyColors.gold,
                      ))
                ],
              ),
              for (Map map in selectItem)
                Container(
                  height: 305,
                  width: 345,
                  child: Column(
                    children: [
                      Container(
                        height: 305,
                        width: 345,
                        child: Stack(
                          children: [
                            Positioned(
                                top: 90,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SingleProduct()));
                                    },
                                    child: Container(
                                        height: 170,
                                        width: 245,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 20),
                                              child: Text(
                                                MyText.headphonesTitle1,
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20, top: 5),
                                              child: Text(
                                                MyText.headphonesSubTitle1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffF3F6F8),
                                            borderRadius:
                                                const BorderRadius.horizontal(
                                              left: Radius.elliptical(32, 80),
                                              right: Radius.elliptical(32, 80),
                                            ),
                                            border: Border.all(
                                                color: MyColors.gold,
                                                width: 2))),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Image(image: AssetImage(map["image"])),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              TabBar(
                  indicatorColor: MyColors.gold,
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      child: Text(
                        'View all',
                        style: TextStyle(color: MyColors.gold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Portable',
                        style: TextStyle(color: MyColors.gold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Multiroom',
                        style: TextStyle(color: MyColors.gold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Architectural',
                        style: TextStyle(color: MyColors.gold),
                      ),
                    ),
                  ]),
              const SizedBox(height: 20),
              MyListView2(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
