import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class SliderDestination extends StatelessWidget {
  SliderDestination({super.key});
  List<String> listImage = [
    'assets/images/img_breakfast.jpg',
    'assets/images/img_breakfast.jpg',
    'assets/images/img_breakfast.jpg',
    'assets/images/img_breakfast.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 300,
        child: Row(
          children: [
            // for (int i = 0; i < listImage.length; i++)
            //   Image.asset(listImage[i]),
            ...listImage.map((e) {
              return Container(
                  margin: EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(e), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30)));
            }).toList()
          ],
        ),
      ),
    );
  }
}
