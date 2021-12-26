void main(List<String> args) {
  final number = 1234;
  print(number);
  // number = 11111;  This will generate an Error because Number is final
  print(number);
  final String name = "sajal";
  print(name);
  const pi = 3.14;
  print(pi);
  // pi = 2.12; Error because pi is const.
  print(pi);
}
