void main() {
  // Fix length lists in dart------------------------------

  var list = [1, 'Two', "3"];
  print(list);
  // var mylist = new List(2); // No longer exists in the list
  var mylist1;
  mylist1 = [12]; //New way to initialize a list
  print(mylist1);

  // Growable lists in dart------------------------------

  var list2 = [1, 2, 3];
  list2.add(5);
  print(list2);
  print(list2[0]);

  // Generic lists or can also called to be as Array
  List<int> list3 = [];
  list3.add(12);
  list3.add(13);
  print(list3);
  List<String> list4 = [];
  list4.add("12");
  list4.add("13");
  list4.add("sajal");
  list4.add("name");
  print("Normal list: ${list4}");
  for (var i in list4) {
    print(i);
  }
}
