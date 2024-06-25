
import 'dart:io';

void main(){
  print('RS Thakur');

  // stdout.write('Enter Your Name ');
  //  var name=stdin.readLineSync();
  //    print('Hello ,$name');
  //
  //    Human(); // creating in class object
  //
  // int a;
  //  a=5;
  //  print(a);
  //  a=7;
  //  print(a);
  //
  //  BigInt longvalue;
  //  longvalue=BigInt.parse('565858469874596556');
  //  print(longvalue);
  //
  //  double percentage=90.52;
  //  print(percentage);
  //
  //  bool isLogin=false;
  //  isLogin=true;
  //  print(isLogin);
var mC= myClass();
// mC.myFunc("ramdev");
// mC.myFunc("Singh");
// mC.myFunc("Lodhi");

  // mC.Add(2,5);
print(mC.Add(2,5));
  // mC.Add(100,500);

}
class myClass {

  void myFunc(String name){
    print(name);
  }

  int Add(int no1 ,int no2){
    int sum = no1 + no2;
    return sum;
  }
}