import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  int id;
  ProductDetailScreen({Key? key, required this.id}) : super(key: key);

  ProductProvider get service => GetIt.I<ProductProvider>();

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    late final product;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: FutureBuilder(
          future: service.getProduct(id),
          builder:
              (BuildContext context, AsyncSnapshot<ProductModel?> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            product = snapshot.data;

            if (product == null) {
              return const Center(
                child: Text(
                  'No product found.',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                  ),
                ),
              );
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Image.network(
                    product.image!,
                    height: 200,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.price.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.title!,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Chip(
                    label: Text(
                      product.category!,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  const SizedBox(height: 30),
                  Text(product.description!),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () async {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Product added to cart'),
            ),
          );
          pp.add2cart(product);
        },
        child: const Icon(Icons.add_shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
