import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Flipper',
      home: MyHomePage(title: 'Color Flipper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 550,
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // 'Background Color: $_counter',
                    'Background Color: #000000',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    // style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              // 'Background Color: $_counter',
              'Background Color: #000000',
              style: TextStyle(color: Colors.black, fontSize: 40),
              // style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
