void main() {
  // final car = Car(
  //   type: "Toyota",
  // );
  // print(car.type);

  // final person1 = Person(name: "TMK", email: "TMK@gmail.com", age: 19);
  // print(person1.name);
  // print(person1._dateOfBirth);

  final myanmar = Country(name: 'Myanmar', numberOfState: 14);
}

// class Car {
//   final String type;
//   int? speed;

//   Car({required String this.type, int? this.speed});
// }

class Person {
  final String name;

  int age;
  final String email;
  late int _dateOfBirth;
  // final String emailPassword;

  Person({
    required String this.name,
    required String this.email,
    required this.age,
  }) {
    _dateOfBirth = DateTime.now().year - age;
  }

  void showPersonInfo() {
    print(
        "Your name is $name , your email is $email and you are $age years old");
  }

  void setAge(int value) {
    age = value;
    _dateOfBirth = DateTime.now().year - value;
  }
}

class Country {
  final String name;
  final int numberOfState;
  late String _location;
  String? capitalCity;

  // void setLocation(String value) {
  //   location = value;
  //   print("$name is in $location");
  // }

  // void allAboutCountry(){
  //   print("$name is in $location and has $numberOfState states and ${capitalCity != null ? "capital city is $capitalCity : ""}");
  // }

  Country({required this.name, required this.numberOfState}) {
    _location;
  }
}
