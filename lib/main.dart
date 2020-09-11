import 'package:examples/change_notifier_example.dart';
import 'package:examples/inherited_widget_value_notifier.dart';
import 'package:examples/simple_color_widget.dart';
import 'package:examples/value_notifier_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InheritedStatefulWidget());
}

class Example3RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Container(
            height: 100,
            width: 100,
            color: Color(0x55e012a6),
          ),
        ),
      ),
    );
  }
}

class Example2RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          body: Builder(
            builder: (BuildContext scaffoldContext) => Container(
              color: Colors.blueGrey,
              child: Center(
                child: RaisedButton(
                    splashColor: Colors.pink,
                    highlightColor: Colors.green,
                    child: Text('Click me!'),
                    onPressed: () {
                      Scaffold.of(scaffoldContext).showSnackBar(SnackBar(
                        content: Text("Hello from the SnackBar!! :)"),
                      ));
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Example1RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              'hey there!',
            ),
          ),
        ),
      ),
    );
  }
}
