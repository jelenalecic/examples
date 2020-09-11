import 'package:examples/utils.dart';
import 'package:flutter/material.dart';

class InheritedStatefulWidget extends StatefulWidget {
  @override
  _InheritedExampleState createState() => _InheritedExampleState();
}

class _InheritedExampleState extends State<InheritedStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: InheritedWidgetWithNotifier(
          notifier: ValueNotifier(Colors.white),
          child: Builder(
            builder: (BuildContext builderContext) => Container(
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                        onPressed: () {
                          builderContext
                              .dependOnInheritedWidgetOfExactType<
                                  InheritedWidgetWithNotifier>()
                              .notifier
                              .value = getRandomColor();
                        },
                        child: Text('Change stripes')),
                    ValueListenableBuilder(
                      valueListenable: builderContext
                          .dependOnInheritedWidgetOfExactType<
                              InheritedWidgetWithNotifier>()
                          .notifier,
                      builder: (context, color, child) => Container(
                        height: 55,
                        color: color,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: builderContext
                          .dependOnInheritedWidgetOfExactType<
                              InheritedWidgetWithNotifier>()
                          .notifier,
                      builder: (context, color, child) => Container(
                        height: 22,
                        color: color,
                      ),
                    ),
                  ],
                )),
          ),
        )));
  }
}

class InheritedWidgetWithNotifier extends InheritedWidget {
  const InheritedWidgetWithNotifier({
    Key key,
    this.notifier,
    @required Widget child,
  }) : super(key: key, child: child);

  final ValueNotifier<Color> notifier;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
