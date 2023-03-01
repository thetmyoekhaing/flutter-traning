void main() {
  String firstLoad(String OS) {
    return OS;
  }

  void showOS(String OS) {
    String typeOfOS = firstLoad(OS);
    print("you are using $typeOfOS operating system");
  }

  showOS("Windows");
  showOS("Linux");
}
