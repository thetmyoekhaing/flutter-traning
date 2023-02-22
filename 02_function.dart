void main() {
  // positional augument function
  // void eat1(String action, String what) {
  //   print("I'm $action $what");
  // }

  // name augument function
  // ? => nullable
  void eat({required String action, String? what}) {
    print("I'm $action ${what ?? ""}");
  }

  eat(action: "eating");

  void goSomewhere({required String place, String? vehicle, int? time}) {
    place == "home"
        ? print("I arrived  home at ${time ?? ""} O'clock")
        : print("I go to $place by ${vehicle ?? ""}");
  }

  goSomewhere(place: "home", time: 8);
  goSomewhere(place: "school", vehicle: "bus");
  goSomewhere(place: "home");
  goSomewhere(place: "school");
}
