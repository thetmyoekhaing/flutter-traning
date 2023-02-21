void main() {
  //string
  String str = "thet";
  print(str);

  //int
  int number = 19;
  print(number);

  //double
  double float = 19.1;
  print(float);

  //boolean
  bool trueFalse = true;
  print(trueFalse);

  //collection <Generic>
  List<String> nameList = ["thet", "myoe", "khaing"];
  List<bool> boolList = [true, false];
  print(nameList);
  print(boolList);

  //map (collection)
  Map<String, String> personInfo = {
    "name": "thet myoe khaing",
    "age": "19",
    "address": "Insein Myothit Yangon",
    "phNumber": "09887423400"
  };
  print(personInfo);
  print(personInfo.runtimeType);

  //nested
  List<Map<String, String>> persons = [
    {"p1Name": "Thet myoe khaing", "age": "20"},
    {"p2Name": "Phyo", "age": "20"}
  ];

  print(persons);
  print(persons.runtimeType);

  Map<String, List<String>> universities = {
    "simpleUni": ["WYU", "YUEco"],
    "medicineUni": [
      "Medicine 1",
      "Medicine 2",
    ],
    "technologyUni": ["TU", "YIT"]
  };

  print(universities);
  print(universities.runtimeType);
}
