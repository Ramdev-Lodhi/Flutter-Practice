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
    var arrName = ['Ram', 'Pranjal', 'Ramdev'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      // ListView.builder(itemBuilder: (context ,index){
      //   return  Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 300,
      //           width: 400,
      //           color: Colors.black26,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Container(
      //                 height: 300,
      //                 width: 180,
      //                 color: Colors.blueAccent,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Text(arrName[index], style: TextStyle(fontSize: 20)),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Text('Age = 20', style: TextStyle(fontSize: 20)),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Text('Gender = Male', style: TextStyle(fontSize: 20)),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Text('Mobile = 8815225624', style: TextStyle(fontSize: 20)),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //
      //               // Right side with image
      //               Container(
      //                 height: 300,
      //                 width: 190,
      //                 color: Colors.deepOrange,
      //                 child: InkWell(
      //                   onTap: (){
      //                     print('click pic');
      //                   },
      //                   onDoubleTap: (){
      //                     print('double click pic');
      //                   },
      //                   onLongPress: (){
      //                     print('Long Press Click Pic');
      //                   },
      //                   child: Center(
      //                     child: Image.asset('assets/images/ramdevlodhi.jpg', height: 300, width: 180),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //
      //         ),
      //       ),
      //     ],
      //   );
      // },
      //     reverse: true,
      //     // itemExtent: 100,
      // itemCount: arrName.length),

      ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 400,
                    // color: Colors.black26,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21)),
                        border: Border.all(width: 3),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 1,
                              color: Colors.grey
                          )
                        ]),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 300,
                          width: 180,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21),
                                  bottomRight: Radius.circular(21))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(arrName[index],
                                    style: TextStyle(fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Age = 20',
                                    style: TextStyle(fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Gender = Male',
                                    style: TextStyle(fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Mobile = 8815225624',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),

                        // Right side with image
                        Container(
                          height: 300,
                          width: 190,
                          // color: Colors.deepOrange,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21),
                                  bottomRight: Radius.circular(21))),
                          child: InkWell(
                            onTap: () {
                              print('click pic');
                            },
                            onDoubleTap: () {
                              print('double click pic');
                            },
                            onLongPress: () {
                              print('Long Press Click Pic');
                            },
                            child: Center(
                              child: Image.asset(
                                  'assets/images/ramdevlodhi.jpg',
                                  height: 300,
                                  width: 180),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
