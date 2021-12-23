import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static const String id = "first_page";

  final String? name;
  final int? age;

  FirstPage({this.name, this.age});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
            color: Colors.blue,
        onPressed: () {
          Navigator.of(context).pop({"name":"Dart", "age":33});
        },
        child: Text(
          "Name: "+widget.name.toString() + "\nAge: " + widget.age.toString(),
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      )),
    );
  }
}
