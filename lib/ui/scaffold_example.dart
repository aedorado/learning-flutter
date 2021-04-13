import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  _tapAlarmAdd() {
    debugPrint("Tapped Alarm Added");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("HH BDD Swami"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade400,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () => debugPrint("Search Pressed")),
          IconButton(icon: Icon(Icons.alarm_add), onPressed: () => _tapAlarmAdd()),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () => debugPrint("tapped .."),
              child: Text("Tap Me!",
              style: TextStyle(fontSize: 23.4,),
            ))
          ],
        ),
        // Text("Hare Krishna\nHare Krishna\nKrishna Krishna\nHare Hare\nHare Rama\nHare Rama\nRama Rama\nHare Hare",
        // textDirection: TextDirection.ltr,
        // style: TextStyle(
        //   fontWeight: FontWeight.w500,
        //   fontSize: 23.4,
        //   fontStyle: FontStyle.italic,
        // )),
      )
    );
  }
}
