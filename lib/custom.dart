import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proj/ui_helper/util.dart';
import 'package:flutter_proj/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dashboard '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    var arrName = [
      'Ram',
      'Pranjal',
      'Ramdev',
      'Siya',
      'Amit',
      'Prashant',
      'Prayansh',
      'Triveni',
      'Pushpendra',
      'Mahima'
    ];
    var arrColor = [
      Colors.black,
      Colors.green,
      Colors.lightBlue,
      Colors.purpleAccent,
      Colors.orangeAccent,
      Colors.teal,
      Colors.yellow,
      Colors.purple,
      Colors.cyan,
      Colors.blueAccent
    ];
    var play;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: RoundedButton(
                  btnName: 'Games',
                  icon: Icon(Icons.gamepad),
                  callBack: () {
                    print(' Playing.....');
                  },
                  // bgColor: Colors.deepOrange,
                  textStyle: mTextStyle18(),
                ),
              ),
              Container(
                width: 150,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callBack: () {
                    print(' Playing.....');
                  },
                  bgColor: Colors.deepOrange,
                  textStyle: mTextStyle18(),
                ),
              ),
              Container(
                width: 150,
                child: RoundedButton(
                  btnName: 'Lock',
                  icon: Icon(Icons.lock),
                  callBack: () {
                    print(' Playing.....');
                  },
                  bgColor: Colors.cyan,
                  textStyle: mTextStyle18(),
                ),
              ),
            ],
          ),
        ));
  }
}
