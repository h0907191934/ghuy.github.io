import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/cart_model.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  static const String apiURL = 'https://fakestoreapi.com/products';
  static const headers = {'Content-type': 'application/json'};
  List<ProductModel> list = [];
  List<ProductModel> listTemp = [];
  bool showGrid = true;
  String key = 'none';
  void Show(bool isGrid) {
    showGrid = isGrid;
    notifyListeners();
  }

  List<CartModel> listcart = [];

  void getList() async {
    var client = http.Client();
    var rs = await client.get(Uri.parse(apiURL));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e) {
      return ProductModel.fromJson(e);
    }).toList();
    listTemp = List.from(list);
    notifyListeners();
  }

  Future<List<String>> getAllCategories() {
    return http.get(Uri.parse('$apiURL/categories')).then((data) {
      final categories = <String>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);

        for (var item in jsonData) {
          categories.add(item);
        }
      }
      return categories;
    }).catchError((e) => print(e));
  }

  Future<List<ProductModel>> getProductsByCategory(String categoryName) async {
    return http
        .get(Uri.parse('$apiURL/category/$categoryName'), headers: headers)
        .then((data) {
      final products = <ProductModel>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        for (var item in jsonData) {
          if (item['category'] == categoryName) {
            products.add(ProductModel.fromJson(item));
          }
        }
      }
      return products;
    });
  }

  Future<ProductModel?> getProduct(int id) {
    return http.get(Uri.parse('$apiURL/$id'), headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        return ProductModel.fromJson(jsonData);
      }
      return null;
    }).catchError((err) => print(err));
  }

  void add2cart(ProductModel product) async {
    for (int i = 0; i < listcart.length; i++) {
      if (listcart[i].product!.id == product.id) {
        listcart[i].soluong = listcart[i].soluong! + 1;
        return;
      }
      ;
    }
    ;
    CartModel a = CartModel(product: product, soluong: 1);
    listcart.add(a);
  }

  void SearchProduct() async {
    list = List.from(listTemp);
    if (key != "none") {
      for (int i = 0; i < list.length; i++) {
        if (!list[i]
                .title
                .toString()
                .toLowerCase()
                .contains(key.toLowerCase()) &&
            !list[i]
                .category
                .toString()
                .toLowerCase()
                .contains(key.toLowerCase())) {
          list.removeAt(i);
          i--;
        }
      }
      // if (list.length != 0) mes = "Result for: " + key;
      //list =  list.where((e) => e.category==categlory);
    }
  }
}
