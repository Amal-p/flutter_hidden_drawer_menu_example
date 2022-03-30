// class Person {
//   String? Name;
//   int? age;
//   //constructor
//   Person(String name, int age){
//     this.Name = name;
//     this.age = age;
//   }
// }
// class Person1 {
//   final String Name1;
//   final int age1;
//   //constructor
//   Person1(this.Name1, this.age1);
// }

// void main() {
//   final person = Person('Amal', 23);
//   //person.Name = "Amal P";
//   print(person.Name);
//   print(person.age);

//   final person1 = Person1('Amal P', 23);
//   //person.Name = "Amal P";
//   print(person1.Name1);
//   print(person1.age1);
// }

class Person{
  final String name;
  final int age;
  //constructor
  Person(this.name, this.age);
  Person.ageAbove50(this.name, this.age){
    print(name);
  }
  Person.ageBelow50(this.name, this.age){
    print(name);
  }

  //function
  sayHai(){
    print('Hai');
  }
}

void main() {
  //constuctor calling
 final person = Person.ageBelow50("Amal P", 23);
 print(person.name);
 print(person.age);
 //function calling
 person.sayHai();
}
