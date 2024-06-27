import 'package:flutter/material.dart';
import 'package:flutter_proj/ui_helper/util.dart';

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
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();
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
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
            color: Colors.white30,
            shadowColor: Colors.black,
            elevation:8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 550,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(child: Text("Login" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      // Center(child: Text("Login" '${time}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      TextField(
                        // keyboardType: TextInputType.phone,
                        controller: emailText,

                        decoration: InputDecoration(
                            hintText: "Enter Email here....",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(color: Colors.red, width: 2),

                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,)
                            ),
                            // suffixText: "Username Exists",
                            // suffixIcon: IconButton(
                            //   icon: Icon(Icons.remove_red_eye,color: Colors.blue,), onPressed: () { print("icon"); },
                            // ),
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ))),
                      ),

                      TextField(
                        controller: password,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            hintText: "Enter Password here....",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(color: Colors.red, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17),
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            prefixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(17),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ))),

                      ),
                      Container(
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            String uEmail =emailText.text.toString();
                            String uPass =password.text;
                            print("Email : $uEmail , Password : $uPass");
                          },

                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          child: Text('Login',style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
