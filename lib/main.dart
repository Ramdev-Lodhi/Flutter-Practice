import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Ramdev Lodhi '),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          // height: 300,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){

                      }, child: Text('click')),
                      ElevatedButton(onPressed: (){

                      }, child: Text('click')),
                    ],
                  ),
                  // Image.asset('assets/images/avatar.jpg')
                  (Text(
                    'R1',
                    style: TextStyle(fontSize: 25),
                  )),
                  (Text(
                    'R2',
                    style: TextStyle(fontSize: 25),
                  )),
                  (Text(
                    'R3',
                    style: TextStyle(fontSize: 25),
                  )),
                  (Text(
                    'R4',
                    style: TextStyle(fontSize: 25),
                  )),
                ],
                // child: Center(child: Image.asset('assets/images/avatar.jpg'))
              ),
              (Text(
                'A',
                style: TextStyle(fontSize: 30),
              )),
              (Text(
                'B',
                style: TextStyle(fontSize: 30),
              )),
              (Text(
                'C',
                style: TextStyle(fontSize: 30),
              )),
              (Text(
                'D',
                style: TextStyle(fontSize: 30),
              )),
              (Text(
                'E',
                style: TextStyle(fontSize: 30),
              )),
              Container(

                  height: 200, width: 200,
                  child: Image.asset('assets/images/avatar.jpg')),
              ElevatedButton(
                  onPressed: () {
                    print('hello');
                  },
                  child: Text('click me', style: TextStyle(fontSize: 30)))
            ],
          ),
          // child: Center(child: Image.asset('assets/images/avatar.jpg'))
        ));
  }
}
