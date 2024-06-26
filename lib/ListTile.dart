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
    var arrName = ['Ram', 'Pranjal', 'Ramdev','Siya'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:

      ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                // child: Image.asset('assets/images/ramdevlodhi.jpg')
                // maxRadius: 20,
                backgroundImage: AssetImage('assets/images/ramdevlodhi.jpg'),
              ),
              title: Text(arrName[index], style: TextStyle(fontSize: 20,fontFamily: 'MyFont',fontWeight: FontWeight.bold)),
              subtitle:Text('Hello', style: TextStyle(fontSize: 20)) ,
              trailing: Icon(Icons.add),
            );


          },
          // reverse: true,
          // itemExtent: 100,
          // scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
              thickness: 2,
            );
          },
          itemCount: arrName.length),
    );
  }
}
