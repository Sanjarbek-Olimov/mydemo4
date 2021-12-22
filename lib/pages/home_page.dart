import 'package:flutter/material.dart';
import 'package:mydemo4/pages/first_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        color: Colors.grey[800],
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstPage()));
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: Text(
          "Go to next page!",
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
