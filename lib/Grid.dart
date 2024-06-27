import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proj/ui_helper/util.dart';
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
    var arrColor =[
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.builder(itemBuilder:(context, index){
          return Container(color: arrColor[index],);

        },
          //   itemCount: arrColor.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   crossAxisSpacing: 11,
          //   mainAxisSpacing: 11
          // ),
          itemCount: arrColor.length,gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 11,crossAxisSpacing: 11
          ),


        )



      // Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       child: GridView.count(crossAxisCount: 8,
      //       crossAxisSpacing: 11,
      //       mainAxisSpacing: 11,
      //       children: [
      //         Container(color:arrColor[0],),
      //         Container(color:arrColor[1],),
      //         Container(color:arrColor[2],),
      //         Container(color:arrColor[3],),
      //         Container(color:arrColor[4],),
      //         Container(color:arrColor[5],),
      //         Container(color:arrColor[6],),
      //         Container(color:arrColor[7],),
      //         Container(color:arrColor[8],),
      //         Container(color:arrColor[9],),
      //
      //         ]
      //       ),
      //
      //     ),
      //     Container(
      //       height: 200,
      //       child: GridView.extent(maxCrossAxisExtent: 100,
      //           mainAxisSpacing: 11,
      //           crossAxisSpacing: 11,
      //           children: [
      //             Container(color:arrColor[0],),
      //             Container(color:arrColor[1],),
      //             Container(color:arrColor[2],),
      //             Container(color:arrColor[3],),
      //             Container(color:arrColor[4],),
      //             Container(color:arrColor[5],),
      //             Container(color:arrColor[6],),
      //             Container(color:arrColor[7],),
      //             Container(color:arrColor[8],),
      //             Container(color:arrColor[9],)
      //
      //           ]),
      //     ),
      //   ],
      // ),


    );
  }
}
