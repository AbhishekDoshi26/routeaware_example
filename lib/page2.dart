import 'package:flutter/material.dart';

import 'main.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with RouteAware {
  @override
  void didPush() {
    print('Page2: Called didPush');
    super.didPush();
  }

  @override
  void didPop() {
    print('Page2: Called didPop');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('Page2: Called didPopNext');
    super.didPopNext();
  }

  @override
  void didPushNext() {
    print('Page2: Called didPushNext');
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
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
