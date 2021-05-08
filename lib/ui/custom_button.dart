import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // final snackBar = SnackBar(
        //   content: Text("Hare Krishna!"),
        //   backgroundColor: Colors.amberAccent,
        // );
        // Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Text("Dasosmi"),
      ),
    );
  }
}
