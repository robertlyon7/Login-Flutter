import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlogin/login.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color.fromRGBO(1, 186, 112, 1),
                        ))),
                const Expanded(
                  child: SizedBox(),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Create Account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const Text(
              "Create A New Account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(
                  right: 30, left: 30, top: 25, bottom: 25),
              child: Column(
                children: [
                  Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Color.fromRGBO(1, 186, 112, 1))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.person_outline),
                            labelText: 'NAME',
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Color.fromRGBO(1, 186, 112, 1))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.email_outlined),
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Color.fromRGBO(1, 186, 112, 1))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.smartphone_outlined),
                            labelText: 'PHONE',
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Color.fromRGBO(1, 186, 112, 1))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Color.fromRGBO(1, 186, 112, 1))),
                      child: TextFormField(
                        style: const TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1)),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            labelText: 'CONFIRM PASSWORD',
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey[500])),
                      )),
                  const SizedBox(
                    height: 30,
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
                        "CREATE ACCOUNT",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Alreaady have an account ? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginPage()));
                        },
                        child: const Text(
                          'Login',
                          style:
                              TextStyle(color: Color.fromRGBO(1, 186, 112, 1)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
