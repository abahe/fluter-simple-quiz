class Person {
  String name = "";
  int age;
  
  //construct
  //add default value
//   Person({String inputName, age = 30}){
//     name = inputName;
//     this.age = age;
//   }
  
  Person({this.name = "", this.age = 30});
}


void main() {
  for (int i = 0; i < 5; i++) {
    //print('hello ${i + 1}');
  }
  
  var result =  (nugelo(1,3.2) );
  
  print("result is : $result ");
  //print("result "  + result);
  
  
  var p1 = Person(name:"Max");
  print(p1.name + " $p1.age) ");
  
  var hisAge = p1.age;
  
  print(p1.name + " and his age = $hisAge");
  
  var p2 = Person(name:"Manu",age:32);
  
}

double nugelo(double num1, double num2){
    //print("hahahaha");
   return num1 + num2;
}


Outputs & input (Visibles)
RaisedButton(), Text(), Cards()

Layout & Control
row, column, listview

