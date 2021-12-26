void main() {
  var mymap = new Map();
  mymap['sa'] = 100;
  mymap[2] = 200;
  print(mymap);
  print(mymap['sa']);
  Map mymap2 = {2: 200, "sa": "100"};
  print(mymap2);
  // Map<int, int> mymap4 = {2: 200, "sa": "100"}; //restricted only for int and generate an error
  Map<int, int> mymap4 = {2: 200, 20: 100};
  print(mymap4);

  // printing the map using for loop
  for (var i in mymap2.values) {
    print(i);
  }
}
