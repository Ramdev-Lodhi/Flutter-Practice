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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: [
              topItems(),
              mid1Itmes(),
              mid2Itmes(),
              bottomItmes(),
            ],
          ),
        ));
  }
}

class topItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.cyan,
        child: ListView.builder(
          itemBuilder: (context, index) => SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                // backgroundColor: Colors.brown,
                backgroundImage: AssetImage('assets/images/ramdevlodhi.jpg'),
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class mid1Itmes extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ramdevlodhi.jpg'),
            ),
            title: Text(arrName[index], style: TextStyle(fontSize: 20,fontFamily: 'MyFont',fontWeight: FontWeight.bold)),
            subtitle: Text('Mobile'),
            trailing: Icon(Icons.delete),
          ),
          itemCount: arrName.length,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class mid2Itmes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
               image: DecorationImage(
                 image: AssetImage('assets/images/ramdevlodhi.jpg'),
                 fit: BoxFit.cover,
                 colorFilter: ColorFilter.mode(Colors.indigo.withOpacity(0.5), BlendMode.dstATop),
               ),
                  // image:Image.asset('assets/images/ramdevlodhi.jpg'),
                  color: Colors.indigo),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class bottomItmes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.deepPurpleAccent,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
