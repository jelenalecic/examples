import 'package:examples/utils.dart';
import 'package:flutter/material.dart';

class ChangeNotifierWidget extends StatefulWidget {
  @override
  _ChangeNotifierWidgetState createState() => _ChangeNotifierWidgetState();
}

class _ChangeNotifierWidgetState extends State<ChangeNotifierWidget> {
  Notifier notifier = Notifier();

  @override
  void initState() {
    notifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: Container(
                alignment: Alignment.center,
                color: notifier.currentColor,
                child: RaisedButton(
                    onPressed: () {
                      notifier.resetColor();
                    },
                    child: Text('Change background')))));
  }
}

class Notifier extends ChangeNotifier {
  Color currentColor = Colors.blueGrey;

  void resetColor() {
    currentColor = getRandomColor();
    notifyListeners();
  }
}
