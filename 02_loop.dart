void main() {
  List<String> listNames = ["Thet", "Myoe"];

  //add to list
  listNames.add("Khaing");
  listNames.addAll(["t", "m", "k"]);

  List<int> ls1 = [19, 20, 21];

  //Iterable -> List but not [] / iterable -> ()
  Iterable transform = ls1.map((e) => e * 2);
  print(transform);

  listNames.map((e) => print(e));

  //for loop
  for (var i = 0; i < listNames.length; i++) {
    print(listNames[i]);
  }

  //for in loop (loop the item)
  for (var name in listNames) {
    //ternary operator
    name == "Thet"
        ? print("your name is Thet")
        : name == "Myoe"
            ? print("your name is Myoe")
            : print(null);
  }

  List<Map<String, String>> nestedList = [
    {"name": "phyo", "age": "20"},
    {"name": "aung", "age": "25"}
  ];

  for (var i = 0; i < nestedList.length; i++) {
    if (int.parse(nestedList[i]["age"]!) > 20) {
      print(nestedList[i]["name"]);
    }
  }

  Map mp = {
    "name": ["thet", "myoe", "khaing"],
    "phone": ["samsung", "IPhone", "Huawei"]
  };

  // mp.entries
  mp.forEach((key, value) {
    if (key == "name") {
      print(key);
    }
  });
}
