// conditional statements
void main(List<String> args) {
  bool a = true;
  bool b = false;
  if (b) {
    print("yes yes a is ${a}");
  } else if (a | b) {
    print("a is ${a} and b is ${b}");
  } else {
    print("both are false");
  }
}
