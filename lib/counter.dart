import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {

                });
                counter--;
              },
              child: Text('Minus',style: TextStyle(color: Colors.blue),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 44,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {

                });
                counter++;
              },
              child: Text('Plus',style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}
