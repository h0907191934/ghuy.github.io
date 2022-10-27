import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/components/home/components/body.dart';
import 'body.dart' as gridone;
import 'body1.dart' as gridtwo;
import 'productlist_page.dart' as grid3;
import 'home_header.dart' as home;
import 'package:flutter_application_1/components/home/components/icon_btn_with_counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
          backgroundColor: Colors.blueGrey[50],
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: IconBtnWithCounter(
                // numOfItems: 3,
                press: () {},
              ),
            ),
          ],
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.list, color: Colors.black54)),
              Tab(icon: Icon(Icons.grid_3x3, color: Colors.black54)),
              Tab(icon: Icon(Icons.category, color: Colors.black54)),
            ],
          ),
        ),
        body: TabBarView(controller: controller, children: <Widget>[
          gridone.Body(),
          grid3.ProductListPage(),
          gridtwo.Body1(),
        ]));
  }
}
