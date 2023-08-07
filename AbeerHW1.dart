import 'dart:io';
import 'package:untitled3/untitled3.dart' as untitled3;

void main(List<String> arguments) {
 // print('Hello world: ${untitled3.calculate()}!');

  //can be null.
String? a=null;
late int? b=null;
print(a);

//safe navigation operator (?).
  String c='ABEER AL-NAMAANI';
  String? d;
  print(c.toLowerCase());
  print(d?.toLowerCase());

  //operator(!). لا داعي لاستخدامة هنا لان البرنامج سيطبع بشكل طبيعي
String e='AMERA';
//print(e!.toLowerCase());
print(e.toLowerCase());
/*operator(!). الاستخدام الخطأ
String? f;
print(f!.toLowerCase());
*/

   //default null-aware operator (??).
  String g='abeer';
  String? h;
  print(g??'one');
  print(h??'two');

  //short if-condition.
  print('enter any number from 1 to 100');
  int? input = int.parse(stdin.readLineSync()!);
  input<50?print('$input < 50'):('$input >50');


  //void function with parameter.
  void printName (String? a) {
    print(a);
  }
  printName('Abeer');
  printName(null);

  //return type with parameter.
  String getName (String? b) {
    return 'your name is $b';
  }
  print(getName('Abeer'));
  String i =getName('abeer');
  getName(i);

  //optional parameters.
  String oP (String N1,[String N2='']) {
    return 'your name is $N1 $N2';
  }
  print(oP('Abeer'));
  print(oP('Abeer','Al-Namaani'));

  //named parameter.
  String nP(String N1,{required String N2}) {
    return 'your name is $N1 $N2';
  }
  String nP1(String N1,{String N2='Al-Namaani'}) {
    return 'your name is $N1 $N2';
  }
  print(nP('Abeer', N2: 'Abd alazez'));
  print(nP1('Abeer',));

  //anonymous function.
  var add=(int x,int y){
    return x+y;
  };
  print(add(15,20));
}


