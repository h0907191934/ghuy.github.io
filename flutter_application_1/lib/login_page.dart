import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/createdacc_page.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/22222.jpg",
                  width: 300,
                  height: 300,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 500,
                      child: TextFormField(
                        controller: usernameController,
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
                      controller: passwordController,
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
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: Text("Đăng nhập"),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        var userName = usernameController.text;
                        print("Xin chào: ${userName}");
                      } else {
                        print("Dữ liệu không chính xác");
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
                    child: Text("Đăng ký"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => createdaccPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding:
                            EdgeInsets.symmetric(horizontal: 160, vertical: 25),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        textStyle: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
