import 'package:flutter/material.dart';
import 'package:flutter_application_1/hashtag_widget.dart';
import 'package:flutter_application_1/slider_widget.dart';
import 'package:flutter_application_1/slider_widget.dart';

class DestinationPagetow extends StatelessWidget {
  DestinationPagetow({Key? key}) : super(key: key);
  String urlImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/%C4%90%E1%BA%A1i_h%E1%BB%8Dc_Khoa_h%E1%BB%8Dc_Hu%E1%BA%BF1.jpg/800px-%C4%90%E1%BA%A1i_h%E1%BB%8Dc_Khoa_h%E1%BB%8Dc_Hu%E1%BA%BF1.jpg";
  String content =
      "Trường Đại học Khoa học là một trường đại học thuộc hệ thống Đại học Huế, được xếp vào nhóm đại học trọng điểm cấp quốc gia của Việt Nam. Trường có tiền thân là Trường Đại học Tổng hợp Huế, được thành lập trên cơ sở sáp nhập trường Đại học Khoa học và trường Đại học Văn khoa của Viện Đại học Huế được thành lập từ năm 1957.[1] Năm 1994, trường đại học Tổng hợp trở thành trường thành viên của Đại học Huế và được đổi tên thành trường Đại học Khoa học.[2]";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // cái cây
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // blockImage(context),
              SliderDestination(),
              HashtagdDistination(),
              blockTitle(context),
              blockButtons(context),
              blockDes(context),
            ],
          ),
        ),
      ),
    );
  }

  blockImage(BuildContext context) {
    return Image.asset("assets/images/10da-lat-ngan-hoa.jpg");
  }

  blockTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0), // tren duoi trai phai, khoang cach
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Truong Dai Hoc Khoa Hoc",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "77 Nguyen Hue, Tp Huế",
                style: TextStyle(fontSize: 15, color: Colors.black45),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
                size: 30,
              ),
              Text(
                "124",
                style: TextStyle(fontSize: 30, color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }

  blockButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        button("call", Icons.phone),
        button("call", Icons.near_me),
        button("call", Icons.share),
      ],
    );
  }

  button(String title, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.blueAccent,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        )
      ],
    );
  }

  blockDes(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        content,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
