import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hashtag_widget.dart';
import 'package:flutter_application_1/slider_widget.dart';

class DestinationPage extends StatelessWidget {
  DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: (Column(
          children: [
            SliderDestination(),
            HashtagdDistination(),
            // Image.asset("assets/images/10da-lat-ngan-hoa.jpg"),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hồ Xuân Hương",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Đà Lạt, Việt Nam"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star, size: 40, color: Colors.red),
                      Text("41")
                    ],
                  )
                ],
              ),
            ),
            Padding(
              // padding: const EdgeInsets.only(left: 30),
              padding: const EdgeInsets.only(right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
