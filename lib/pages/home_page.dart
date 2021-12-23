import 'package:flutter/material.dart';
import 'package:mydemo4/pages/first_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "ButtonOne";
  int? age;


  Future _nextPage() async {
    Map result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return FirstPage(
        name: "Flutter",
        age: 22,
      );
    }));
    if (result != null && result.containsKey("name") && result.containsKey("age")) {
      setState(() {
        name = result["name"];
        age = result["age"];
      });
    } else {
      print('Nothing');
    }
  }
  String text(){
    if(age!=null) return "Name: "+ name+"\nAge: "+age.toString();
    else return name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        color: Colors.grey[800],
        onPressed: () {
          _nextPage();
        },
        child: Text(
          text(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ));
  }
}
