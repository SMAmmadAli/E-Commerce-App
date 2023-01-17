import 'package:flutter/material.dart';
import 'package:st_store/widgets/home_page_widget/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  List<Map> products = [
    {
      "image": "asset/image/mic.png",
      "title": "Speakers",
      "subTitle": "100+ Product"
    },
    {
      "image": "asset/image/headphone.png",
      "title": "Headphones",
      "subTitle": "15+ Product",
    },
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          size: 25,
          color: Color(0xff111111),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Center(
                child: Text(
                  'Browse by Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
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
                              child: Container(
                                height: 150,
                                width: 205,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF3F6F8),
                                    borderRadius: BorderRadius.horizontal(
                                        right: Radius.elliptical(32, 80),
                                        left: Radius.elliptical(32, 80))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      'Speakers',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '100+ Product',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff171717)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              child: Image(
                                  image: AssetImage("asset/image/mic.png")),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 16,
                        ),
                    itemCount: 3),
              ),
            ),
            const Divider(
              color: Color(0xffF3F6F8),
              thickness: 5,
            ),
            const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Center(
                  child: Text(
                    'Recommended for You',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                )),
            const SizedBox(
              height: 24,
            ),
            Padding(
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
                            color: Color(0xffF3F6F8),
                            borderRadius: BorderRadius.circular(32)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('asset/image/mic.png'),
                            ),
                            Text(
                              'Speakers',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '100+ Product',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff171717)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                    itemCount: 3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
