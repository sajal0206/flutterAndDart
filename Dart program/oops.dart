class car {
  // class without constructor and using getter and setter methods to access name
  String name =
      "Default Car Name"; // string can't be null so we are setting some value in it if we are not going to set any value then by default it will be printer or used.
}

class car2 {
  // class with constructor
  String name = "Default";
  String color = "Default";

  // Simple constructors
  car2(String name) {
    //parameter is passed to construct something
    this.name = name; // this keyword is used to access calss members.
  }

  // Named construcors
  car2.setColor(String col) {
    this.color = col;
  }
}

void main(List<String> args) {
  car bmw = new car(); // Creating object of the class
  bmw.name =
      "BMW"; // this line will be called to be as setter because we are setting some value usig this line code
  print(
      "Car Name: ${bmw.name}"); // this line will be called to be as getter because we are getting some value usig this line code

  car2 audi = new car2("audi");
  print("Car Name: ${audi.name}");
  car2 audiColor = new car2("Red");
  print("Car color: ${audiColor.name}");
}
