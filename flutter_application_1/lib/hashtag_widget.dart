import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HashtagdDistination extends StatelessWidget {
  HashtagdDistination({super.key});
  List<String> hashList = [
    '#Đại nội',
    '#Du lịch',
    '#Sông Hương',
    '#Huế',
    '#Sông Hương',
    '#Sông Hương',
    '#Sông Hương',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            ...hashList.map((e) {
              return Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ));
            }).toList()
          ],
        ),
      ),
    );
  }
}
