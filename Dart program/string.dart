late String var1;
void main() {
  // String str1 = 'string 1';
  // String str2 = "string 2";
  // String str3 = '''String 3 line 1
  // String 3 line 2''';
  // String str4 = """String 4 line 1
  // String 4 line 2""";
  // print("${str1}\n${str2}\n${str3}\n${str4}");
  String str1 = 'HELLO 1';
  String str2 = "  WORLD";
  print(str1 + str2);
  print("codeUnits = ${str1.codeUnits}");
  print("isEmpty = ${str1.isEmpty}");
  print("Length = ${str1.length}");
  print("toLowerCase = ${str1.toUpperCase()}");
  print("toUpperCase = ${str1.toLowerCase()}");
  var store = str1.split("2");
  print("Split = ${store}");
  // print(var1); //This will show an error because while creating the late variable we didn't initialized it.
  // var1 = "change";
  // print(var1);
}
