import 'package:examples/utils.dart';
import 'package:flutter/material.dart';

class SimpleColorWidget extends StatefulWidget {
  @override
  _SimpleColorWidgetState createState() => _SimpleColorWidgetState();
}

class _SimpleColorWidgetState extends State<SimpleColorWidget> {
  Color currentColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: Container(
                alignment: Alignment.center,
                color: currentColor,
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        currentColor = getRandomColor();
                      });
                    },
                    child: Text('Change background')))));
  }
}
