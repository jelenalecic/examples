import 'package:examples/utils.dart';
import 'package:flutter/material.dart';

class ValueNotifierWidget extends StatefulWidget {
  @override
  _ValueNotifierWidgetState createState() => _ValueNotifierWidgetState();
}

class _ValueNotifierWidgetState extends State<ValueNotifierWidget> {
  ValueNotifier<Color> notifier = ValueNotifier(Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: ValueListenableBuilder(
                valueListenable: notifier,
                builder: (context, color, widget) => Container(
                    alignment: Alignment.center,
                    color: color,
                    child: RaisedButton(
                        onPressed: () {
                          notifier.value = getRandomColor();
                        },
                        child: Text('Change background'))))));
  }
}
