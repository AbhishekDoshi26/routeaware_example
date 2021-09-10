import 'package:flutter/material.dart';
import 'package:routeaware_example/page1.dart';

void main() => runApp(MyApp());
final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Page1(),
      navigatorObservers: [routeObserver],
    );
  }
}
