void main() {
  // List<String> popularPlaceInYgn = [
  //   "Shwedagon Pagoda",
  //   "Yangon Zoo",
  //   "People's Park"
  // ];
  // List<String> popularPlaceInBagan = [
  //   "Bagan Pagodas",
  //   "Bagan Temples",
  //   "Ananda Temple"
  // ];

  Map<String, String> ygnPlace = {
    "firstPlace": "Shwedagon Pagoda",
    "secondPlace": "Yangon Zoo",
    "thirdPlace": "People's Park"
  };

  Map<String, String> mdyPlace = {
    "firstPlace": "Bagan Pagodas",
    "secondPlace": "Bagan Temples",
    "thirdPlace": "Ananda Temple"
  };

  void travel({required String place}) {
    if (place == "Yangon") {
      // for (var YgnPlace in popularPlaceInYgn) {
      //   print("You can go to $Ygnplace");
      // }

      // for (var i = 0; i < popularPlaceInYgn.length; i++) {
      //   print("You can go to ${popularPlaceInYgn[i]}");
      // }

      print(
          "You can go to ${ygnPlace["firstPlace"]} ${ygnPlace["secondPlace"]} and ${ygnPlace["thirdPlace"]}");
    } else if (place == "Bagan") {
      // for (var i = 0; i < popularPlaceInBagan.length; i++) {
      //   print("You can go to ${popularPlaceInBagan[i]}");
      // }
      print(
          "You can go to ${mdyPlace["firstPlace"]} ${mdyPlace["secondPlace"]} and ${mdyPlace["thirdPlace"]}");
    } else {
      print("Go to bed!!!!");
    }
  }

  travel(place: "Bagan");
  travel(place: "Yangon");
  travel(place: "Mandalay");
}
