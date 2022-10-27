import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/components/home/components/detail.dart';
import 'package:flutter_application_1/components/home/components/home_header.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: [
          ...pp.list.map((e) {
            return Center(
              // color: Colors.red,
              child: Card(
                elevation: 10,
                child: Expanded(
                  child: InkWell(
                    child: Container(
                      height: 300,
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                      // margin: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(16),
                      // ),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      e.image ?? "",
                                    )),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(top: 20),
                                // width: 400,
                                // height: 100,
                                child: Container(
                                  child: Text(
                                    e.title ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                )),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$" + e.price.toString() ?? "",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Icon(Icons.shopping_cart)
                              ],
                            )),
                            SizedBox(
                                // height: 1.0,
                                )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailScreen(id: e.id!)),
                      );
                    },
                  ),
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
