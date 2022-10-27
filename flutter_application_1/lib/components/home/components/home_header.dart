import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home/components/icon_btn_with_counter.dart';
import 'package:flutter_application_1/components/home/components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SearchField()],
      ),
    );
  }
}
