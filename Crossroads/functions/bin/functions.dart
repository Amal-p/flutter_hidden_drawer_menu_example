void main() {
  sum();
  sumParams(2, 3);
  var value = returnSum(2, 3);
  print(value);
  sumReq(firstNumber: 100, secondNumber: 200, therd: 10);
  //function to a function
  sumFunction(10, 20000, sumParams);
  //anonymous function
  sumFunction(10, 20000, (int f, int k) => {print('Sum is ${f + k}')});
  sumFuture(2000, 4000);
  print("after future function");
  waitFunction();
}

void sum() {
  print(2 + 3);
}

void sumParams(int a, int b) {
  print('${a + b}');
}

int returnSum(int c, int d) {
  int result = c + d;
  return result;
}

//parameter required function firstNumber, secondNumber is required
//therd is optional
void sumReq(
    {required int firstNumber, required int secondNumber, int therd = 0}) {
  print(firstNumber + secondNumber + therd);
  print(therd);
}

void sumFunction(int a, int b, Function(int, int) custumSum) {
  custumSum(a, b);
}

//future function
Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3)); //wait 3 seconds
  print("sum is ${a + b}");
  return a + b;
}

//await for wait
Future<void> waitFunction() async {
  var result = await sumFuture(200, 30);
  print(result);
}
