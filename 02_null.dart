void main() {
  String? name;

  if (name != null && name.contains("aung")) {
    print("your name is aung");
  } else {
    print("no name");
  }

  if (name != null) {
    print(name);
  }

  print(name ?? "none");
}
