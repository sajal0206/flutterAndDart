import 'dart:ffi';

main() {
  // Variable in dart

  var $var1 =
      12; // dynamic but only can hold same data type variable that is stored at 1st
  var _var2 = 13;
  var var3 = $var1 + _var2;
  print(var3);

  int num = 12;
  print(num);
  // Float num2 = 12.22; nothing like that we can perform
  // print(num2);
  String str = "sajal";
  print(str);
  dynamic any = "13"; // Can hold any type of data type at any point
  print(any);
  any = "sajal";
  print(any);
  double db = 12.222222;
  print(db);
}
