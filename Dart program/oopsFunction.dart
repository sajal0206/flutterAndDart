class car {
  String name = "";

  void beauty() {
    print(name.toUpperCase());
    var fletter = name[0].toUpperCase();
    var allletters = name.substring(1).toLowerCase();
    print(fletter + allletters);
  }
}

void main() {
  car c = new car();
  c.name = "some_Car_Name";
  c.beauty();
}
