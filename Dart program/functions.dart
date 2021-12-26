String name() {
  //declaring function of String return type
  print("printing from function");
  return ("sajal");
}

void fxn() {
  //declaring function of void return type and can't return any thing from itself
  // return ("sajal");
}
int sum(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  print(name());
  int a = 10;
  int b = 20;
  int x = 10;
  int y = 20;
  print(sum(a, b));
  print(sum(x, y));


// Lambda functions or can say arrow function or fat arrow syntax

  var add = (int c, int d) => c + d;
  print(add(12, 24));
}
