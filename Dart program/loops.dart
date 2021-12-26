void main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    if (i%3 == 0) {
      continue;
    }
    print(i);
    if (i == 5) {
      break;
    }
  }
}
