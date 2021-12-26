class car {
  String name = "";
  String color = "";
  double price = 0;

  double carprice() {
    return price / 2;
  }
}

class race extends car {
  double carprice() {
    return price - 200.0;
  }
}

void main(List<String> args) {
  race r = new race();
  r.name = "My Race car";
  r.color = "Black";
  r.price = 4000.0;
  print(r.name);
  print(r.color);
  print(r.carprice());
}
