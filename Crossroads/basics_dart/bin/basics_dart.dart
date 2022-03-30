import 'dart:io';

void main() {
  // print('HELLO WORLD');
  // var a = stdin.readLineSync();
  // print("Hello $a");

  // print("Enter Two numbers : ");
  // var input1 = stdin.readLineSync();
  // var input2 = stdin.readLineSync();
  //convert it to integer
  // var num1 = int.parse(input1!);
  // var num2 = int.parse(input2!);
  // print("SUM = ${num1+num2}");

  //DataType
  // int a = 1;
  // double b = 2.2;
  // num c = 10;
  // num d = 10.20;

  // String name = 'Amal';
  // String details = "I'am Amal P";
  // String address = ''' Perrottu(HO),
  //                       Vatayam(PO) ''';

  // print(name.length);
  // print(details.length);
  // print(address.length);

  //Enter number is negative or positive
  // print("Enter a number : ");
  // var input = stdin.readLineSync();
  // var num = int.parse(input!);
  // if(num<0){
  //   print("Number is Negative");
  // }else if(num>0){
  //   print("Number is Posative");
  // }else{
  //   print("Number is Zero");
  // }

  //for Loop
  // for(var i=0;i<=10;i++ ){
  //   print(i);
  // }
  //while loop
  // var i=0;
  // while(i<=10){
  //   print(i);
  //   i++;
  // }
  //do while loop
  // var k=0;
  // do{
  //   print(k);
  //   k++;
  // }while(k<=10);

  //list
  // List<int> numberList = [12, 20, 35];
  // var array = [10, 'Amal', 20.2];
  // List<int> listToAdd = [25, 321, 19];
  // print(numberList);
  // print(array.length);
  // print(numberList.length);
  // if (numberList.contains(30)) {
  //   print("30 contain");
  // } else {
  //   print("30 is not in list");
  // }
  // if (array.contains("Amal")) {
  //   print("Amal inside list");
  // } else {
  //   print("Amal not inside list");
  // }
  // //add an element
  // numberList.add(64);
  // //remove an element
  // array.removeAt(0);
  // //add a list to another list
  // numberList.addAll(listToAdd);
  // print(numberList);
  // print(array);
  // print(numberList.join('*'));
  // //nested list
  // List<List<int>> list = [
  //   [1, 2, 3],
  //   [4, 5, 6]
  // ];
  // print(list[0][1]);
  //Set
  // List<int> numberList = [0, 0, 0, 1, 2, 2, 3, 4, 6, 6];
  // Set<int> numberSet = {0, 0, 0, 1, 2, 2, 3, 4, 6, 6};
  // print(numberList);
  // print(numberSet);
  //Map
  Map<String, String> map = {
    "Name": "Amal",
    "Age": "23",
  };
  var map2 = {
    "Name": "Amal",
    "Age": 23,
  };
  print(map);
  print(map2);
  print(map['Name']);
}
