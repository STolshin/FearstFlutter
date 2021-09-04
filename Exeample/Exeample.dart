import 'dart:io';

import 'package:characters/characters.dart';

void main() {

  final listOfInt = [1,25555,7777,585858];
  final listOfInt1 = [1,25555,7777,585858];
  listOfInt.first;
  //listOfInt[0];
  final result = listOfInt.isEmpty;
  //final result2 = listOfInt.map((e) => e*50);

  //print(result2);

  //int myFunction(int e)=>e*1000;
  //int result3 = myFunction(5);

  String myFunction3 (String e) => e;
  var result4 = myFunction3('Привет дружок');

  final result5 = listOfInt.contains(1000);
  final result6 = listOfInt.where((element) => element-25555==0);

  final mapOfInt = <String,int>{

    'Привет': 10000000,
    'Пока':   20000000
  };


  print (mapOfInt["Привет"]);


  int myFunction (int a, int b, [int? c, int? d]){
    return a + b + (c??10) +(d??20);
  }

  int myFunction1 ({int? a,  int? b}){
    return  (a??10) +(b??20);
  }

  print(myFunction(10, 20));
  print(myFunction1());


  final listOfChar = ["a","b","c","d"];
  var i = 0;
  for (var index in listOfChar){

    print('index:$i value: $index ');
    i++;
  }



// for (var index=0 ;  index<4;  index++){
//    print(listOfChar[index]);
 // }
  final employeOne = Employe(
      name: 'Ivan',
      surname: 'Ivanov',
      pasport: '101254',
      age: 45,
      salary:[10,250]);


  final emploerTwo = Emploer('Ivan', 45, 'surname', 'pasport', [10,1000000],10000);
}

   class Employe {

   final String name;
   final String surname;
   final String pasport;
   final int age;
   final List<int> salary;

   Employe( {required this.name, required this.surname, required this.pasport, required this.age, required this.salary});
}



  class Emploer  {

  final String name;
  final String surname;
  final String pasport;
  final int age;
  final List<int> salary;

  final int sum;
  int? sum2;

  Emploer (this.name, this.age, this.surname, this.pasport, this.salary,  this.sum);


}


