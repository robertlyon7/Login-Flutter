import 'dart:html';
import 'dart:js_util';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterlogin/account.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_outline,
              color: Color.fromARGB(255, 224, 224, 224),
              size: 150,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Sign To Continue",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Material(
                elevation: 4,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 112, 1))),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(1, 186, 112, 1))),
                        labelText: "EMAIL",
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Material(
                elevation: 4,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 112, 1))),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(1, 186, 112, 1))),
                        labelText: "PASSWORD",
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          color: Color.fromRGBO(1, 186, 112, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 460,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(1, 186, 112, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dont have an account ? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => register()));
                  },
                  child: const Text(
                    'create new account',
                    style: TextStyle(color: Color.fromRGBO(1, 186, 112, 1)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
