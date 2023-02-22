void main() {
  //sprcifier
  //final and const => Constant

  //string
  String str = "thet";

  //String method
  print(str.hashCode);
  print("thet".hashCode);
  print(str.hashCode == "thet".hashCode ? true : false);

  print(str.runes);

  String num = "20";

  //String to int
  int num2 = int.parse(num);

  //int
  int number = 19;
  print(number);
  print(num2 + number);

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
