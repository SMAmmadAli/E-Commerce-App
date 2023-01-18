import 'package:flutter/material.dart';
import 'package:st_store/data/data.dart';

class MyListView2 extends StatelessWidget {
  const MyListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  children: [
                    Image(
                      image: AssetImage(products[index]['image']),
                    ),
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
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: products.length),
      ),
    );
  }
}
