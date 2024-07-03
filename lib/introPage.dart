import 'package:flutter/material.dart';
import 'package:flutter_proj/Login.dart';
import 'package:flutter_proj/add_subtract.dart';

class IntroPage extends StatelessWidget {
var logindata;
var psss;
IntroPage(this.logindata,this.psss);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        // width: 150,
        width: double.infinity,
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 110,
              width: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),

                    child: ElevatedButton(onPressed: (){

                      Navigator.pop(context);
                    },  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      alignment: Alignment.bottomLeft,

                    ),
                        child: Icon(Icons.line_weight)),
                    // child: Icon(Icons.line_weight)),


              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Navigate to home screen or perform action
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                // Navigate to search screen or perform action
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Navigate to profile screen or perform action
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap: () {
                // Navigate to profile screen or perform action
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Login(title: 'Login'))); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome ,$logindata', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
