import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String src =
      "https://images.unsplash.com/photo-1661961112951-f2bfd1f253ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Application - G4",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Xin chao",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Text(
                "Chao mung den vs nhom 4",
              ),
              Image.network(src),
              Image.network(src),
              Image.network(src),
              Image.network(src),
              Image.asset("assets/images/aaaa.jpg"),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.red,
                  ),
                  Text(
                    "over 2000 ratings",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
