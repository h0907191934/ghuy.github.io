import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/hocphan.dart';
import 'package:flutter_application_1/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class test1 extends StatelessWidget {
  test1({super.key});
  List<hocphan> listImage = [
    hocphan("Toán rời rạc SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS", "MS01",
        "7 học viên", "assets/images/img_breakfast.jpg"),
    hocphan("Toán rời rạc", "MS01", "7 học viên",
        "assets/images/img_breakfast.jpg"),
    hocphan("Toán rời rạc", "MS01", "7 học viên",
        "assets/images/img_breakfast.jpg"),
    hocphan("Toán rời rạc", "MS01", "7 học viên",
        "assets/images/img_breakfast.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...listImage.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  // dismissible: DismissiblePane(onDismissed: () {
                  //   // we can able to perform to some action here
                  // }),
                  motion: const DrawerMotion(),
                  children: [
                    SlidableAction(
                      autoClose: true,
                      flex: 1,
                      onPressed: (value) {
                        // myList.removeAt(index);
                        // setState(() {});
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      autoClose: true,
                      flex: 1,
                      onPressed: (value) {
                        // myList.removeAt(index);
                        // setState(() {});
                      },
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                      label: 'Edit',
                    ),
                  ],
                ),
                child: Stack(children: [
                  Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              e.anh,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 190,
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        e.monhoc,
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                e.mahocphan,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          Text(
                            e.hocvien,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
