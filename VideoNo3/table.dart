import 'package:excercise_one/constant.dart';
import 'package:flutter/material.dart';

class Table extends StatefulWidget {


  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemCount: 10,
        itemBuilder: (context , index){
          return Text("HDIJA");
        }),
      ),
    );
  }
}
