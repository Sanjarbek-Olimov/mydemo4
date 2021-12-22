import 'package:flutter/material.dart';
import 'package:mydemo4/pages/first_page.dart';
import 'package:mydemo4/pages/home_page.dart';

void main(){
  runApp(FlutterB14());
}

class FlutterB14 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: HomePage(),
      routes: {
        HomePage.id: (context)=>HomePage(),
        FirstPage.id: (context) => FirstPage(),
      },
    );
  }
}
