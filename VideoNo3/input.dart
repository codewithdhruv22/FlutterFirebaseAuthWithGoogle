import 'package:excercise_one/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController  textEditingController = new TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ]

            ),
            GestureDetector(onTap: () {
              constant.num = int.parse(textEditingController.text);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Table()));
            }, child: Text("MAKE TABLE")),
          ],
        ),
      ),
    );
  }
}
