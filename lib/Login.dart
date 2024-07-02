import 'package:flutter/material.dart';
import 'package:flutter_proj/ui_helper/util.dart';





class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
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
