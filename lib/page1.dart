import 'package:flutter/material.dart';
import 'package:routeaware_example/page2.dart';

import 'main.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with RouteAware {
  @override
  void didPush() {
    print('Page1: Called didPush');
    super.didPush();
  }

  @override
  void didPop() {
    print('Page1: Called didPop');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('Page1: Called didPopNext');
    super.didPopNext();
  }

  @override
  void didPushNext() {
    print('Page1: Called didPushNext');
    super.didPushNext();
  }

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Page2(),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Page 1',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
