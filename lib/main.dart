import 'package:flutter/material.dart';

void main() {
  runApp(Example3RootWidget());
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
