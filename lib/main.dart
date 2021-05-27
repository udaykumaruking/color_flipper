import 'dart:math';
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

String randomizer() {
  int _r = Random().nextInt(256);
  int _g = Random().nextInt(256);
  int _b = Random().nextInt(256);

  generator(int a, int b, int c) {
    String a1 = (a ~/ 16).toRadixString(16);
    String a2 = (a % 16).toRadixString(16);
    String b1 = (b ~/ 16).toRadixString(16);
    String b2 = (b % 16).toRadixString(16);
    String c1 = (c ~/ 16).toRadixString(16);
    String c2 = (c % 16).toRadixString(16);
    return a1 + a2 + b1 + b2 + c1 + c2;
  }

  return generator(_r, _g, _b);
}

String finalColor = 'ffffff';
int forrbg(finalColor) {
  String forBg = '0xff' + finalColor;
  return int.parse(forBg);
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    randomizer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(forrbg(finalColor)),
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
                    'Background Color: ',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    '$finalColor',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                ),
                onPressed: () => {
                      setState(() {
                        finalColor = randomizer();
                        forrbg(finalColor);
                      })
                    },
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Randomize',
                    style: TextStyle(fontSize: 22),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
