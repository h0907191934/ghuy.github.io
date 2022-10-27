import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home/components/body1.dart';
import 'package:flutter_application_1/components/home/components/home_header.dart';
import 'package:flutter_application_1/components/home/components/home_screen.dart';
// import 'package:flutter_application_1/components/home/components/listview_page.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_application_1/diadiem.dart';
import 'package:flutter_application_1/diadiem1.dart';
import 'package:flutter_application_1/homepagge.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/components/home/components/productlist_page.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:provider/provider.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => ProductProvider());
}

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
      child: MaterialApp(
        title: 'Fake Store',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
