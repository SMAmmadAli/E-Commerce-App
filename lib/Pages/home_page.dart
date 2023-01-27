import 'package:flutter/material.dart';
import 'package:st_store/widgets/home_page_widget/my_listview_1.dart';
import 'package:st_store/widgets/home_page_widget/bottom_navbar.dart';
import 'package:st_store/widgets/home_page_widget/headings.dart';
import 'package:st_store/widgets/home_page_widget/my_listview2.dart';

class HomePage extends StatelessWidget {
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
            const MyHeading(heading: 'Browse by Categories'),
            const SizedBox(
              height: 16,
            ),
            MyListView(),
            const Divider(
              color: Color(0xffF3F6F8),
              thickness: 5,
            ),
            const MyHeading(heading: 'Recommended for You'),
            const SizedBox(
              height: 24,
            ),
            MyListView2(),
          ],
        ),
      ),
    );
  }
}
