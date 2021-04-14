import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  var _index = 0;
  var _quotes = [
    "Stay Hungry. Stay Foolish.",
    "Steve Jobs",
    "Good Artists Copy, Great Artists Steal.",
    "Pablo Picasso",
    "Argue with idiots, and you become an idiot.",
    "Paul Graham",
    "Be yourself; everyone else is already taken.",
    "Oscar Wilde",
    "Simplicity is the ultimate sophistication.",
    "Leonardo Da Vinci",
  ];

  _showQuote() {
    setState(() {
      _index = (_index + 1) % _quotes.length;
      debugPrint(_index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                        child: Text(_quotes[_index],
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontStyle: FontStyle.italic,
                              fontSize: 16.05,
                              fontWeight: FontWeight.bold,
                            )))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: TextButton.icon(
                    onPressed: () => {_showQuote()},
                    icon: Icon(Icons.wb_sunny),
                    label: Text(
                      "Inspire me!",
                      style: TextStyle(
                        fontSize: 18.8,
                        color: Colors.red,
                      ),
                    ))),
            Spacer(),
          ],
        ),
      ),
    ));
  }
}
