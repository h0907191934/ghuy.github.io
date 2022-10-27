import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/login_page.dart';

class createdaccPage extends StatelessWidget {
  createdaccPage({super.key});
  var usernameController1 = TextEditingController();
  var passwordController1 = TextEditingController();
  var passwordController2 = TextEditingController();

  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 500,
                  child: TextFormField(
                    controller: usernameController1,
                    decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        label: Text("Tên đăng nhập"),
                        hintText: "Vui lòng nhập tên đăng nhập",
                        prefixIcon: Icon(Icons.person)),
                    validator: (str) {
                      if (str == null || str.isEmpty)
                        return "Tên đăng nhập không được để trống";
                      return null;
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 500,
                child: TextFormField(
                  controller: passwordController1,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text("Mật khẩu"),
                      hintText: "Vui lòng nhập mật khẩu",
                      prefixIcon: Icon(Icons.key)),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Mật khẩu không được để trống";
                    else
                      return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 500,
                child: TextFormField(
                  controller: passwordController2,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text("Nhập lại Mật khẩu"),
                      hintText: "Vui lòng nhập lại mật khẩu",
                      prefixIcon: Icon(Icons.key)),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Mật khẩu không được để trống";
                    else if (str != passwordController1.text)
                      return "Mật khẩu không trùng";
                    else
                      return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 500,
                child: TextFormField(
                  // controller: passwordController2,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text("Email"),
                      hintText: "Vui lòng nhập Email",
                      prefixIcon: Icon(Icons.email)),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Email không được để trống";
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: Text("Đăng ký"),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    // var userName = usernameController1.text;
                    //   print("Xin chào: ${userName}");
                    // } else {
                    //   print("Dữ liệu không chính xác");
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: Text("Quay lại"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
