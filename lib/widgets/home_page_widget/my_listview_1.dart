import 'package:flutter/material.dart';
import 'package:st_store/Pages/dashboard.dart';

import '../../data/data.dart';

class MyListView1 extends StatelessWidget {
  MyListView1({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: InkWell(
                  onTap: () {
                    selectItem.add(products[index]);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardView(),
                        ));
                  },
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
                            children: [
                              Text(
                                products[index]['title'],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                products[index]['subTitle'],
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff171717)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child:
                            Image(image: AssetImage(products[index]["image"])),
                      )
                    ],
                  ),
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
}
