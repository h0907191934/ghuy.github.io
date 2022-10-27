import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TinChi extends StatelessWidget {
  const TinChi({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.blue[600],
          child: const Center(
            child: Text('data1'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.blueGrey[500],
          child: const Center(
            child: Text('data3'),
          ),
        ),
        Container(
          height: 50,
          color: Colors.lightBlueAccent[100],
          child: const Center(
            child: Text('data2'),
          ),
        ),
      ],
    );
  }
}
