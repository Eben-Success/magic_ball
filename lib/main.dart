import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Redressed',
              ),
            ),
          ),
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int changeNum = Random().nextInt(5) + 1;

  void changePic() {
    setState(() {
      changeNum = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changePic();
                },
                  child: Image.asset('images/ball$changeNum.png')),
            ),
          ),
        ],
      ),
    );
  }
}

