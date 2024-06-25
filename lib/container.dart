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
        body: Center(
          child: Container(
            width: 500,
            height: 100,
            color: Colors.black12,
            child: Center(
                child: Text('Hi Bro, Ramdev Lodhi ',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold))),
          ),
          //
          // )
          // TextButton(
          //     child: Text('Click me'),
          //     onPressed: () {
          //       print("Hi Bro !!");
          //     },
          //     onLongPress: () {
          //       print("Hi Bro !! How are you");
          //     }),

          // ElevatedButton(
          //     child: Text('Elevate Btn' , style: TextStyle(color: Colors.black),),
          //     onPressed: () {
          //       print('Hi Sir');
          //     },
          //   ),
          // OutlinedButton(
          //   child: Text('Outlined Btn'),
          //   onPressed: (){
          // print('Hi Brother');
          // },
        ));
  }
}
