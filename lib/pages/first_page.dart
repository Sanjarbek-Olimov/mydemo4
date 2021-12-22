import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static const String id = "first_page";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          color: Colors.grey[800],
          onPressed: () { 
            Navigator.pop(context);
          },
          child: Text("Go to back!", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
