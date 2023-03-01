class Country {
  final String name;
  final int numberOfState;
  late String? _location;
  String? capitalCity;

  // void setLocation(String value) {
  //   location = value;
  //   print("$name is in $location");
  // }

  void allAboutCountry() {
    print(
        "$name ${_location != null ? "" : "is in $_location and"}  has $numberOfState states and ${capitalCity != null ? "" : "capital city is $capitalCity"}");
  }

  get getLocation {
    return _location;
  }

  set setLocation(String value) {
    _location = value;
  }

  Country({required this.name, required this.numberOfState});
}

void main() {
  final country1 = Country(name: "Myanmar", numberOfState: 14);
  country1.setLocation = "Asia";
  country1.allAboutCountry();
}
