// // 1. User register to play game (include money)
// // 2. Earn ur money
// // 3. Guess ur number between 1-9
// // 4. Calculate win or lose with the process of +2 or -2
// // 5. Check user can play more game with his money

import 'dart:io';

/// This class is to guess the number between 1 - 9 and if you win , you can continue to play more
class Guess {
  final String name;
  //user money
  late int _balance;

  late int? userGuessNumber;

  late int earn;
  late bool? play;

  get getBalance {
    return _balance;
  }

  set setBalance(int value) {
    _balance = value;
  }

  Guess(
      {required this.name,
      required this.earn,
      bool? this.play,
      int? this.userGuessNumber});
}

void main() {
  String? username;

  String? earn;

  String? balance;

  String? max;

  username = checkNullEmpty(output: "Enter your username", input: username);

  balance = checkNullEmpty(
    output: 'Enter your balance',
    input: balance,
    validator: (input) => validateNumberInput(input, 0, 999999),
  );

  earn = checkNullEmpty(
      output: "Enter your earnings",
      input: earn,
      validator: (input) => validateNumberInput(input, 0, 999999));

  max = checkNullEmpty(
    output: 'Enter your guess number',
    input: max,
    isMax: true,
    validator: (input) => validateNumberInput(input, 1, 9),
  );

  final user1 = Guess(
      name: username!,
      earn: int.parse(earn!),
      userGuessNumber: int.parse(max!));
  user1.setBalance = int.parse(balance!);
  print(user1.userGuessNumber);
}

String? checkNullEmpty({
  required String output,
  String? input,
  bool isMax = false,
  String? Function(String?)? validator,
}) {
  while (input == null || input.trim().isEmpty) {
    print(output);
    input = stdin.readLineSync()?.trim();
  }
  if (validator != null) {
    input = validator(input);
  }
  return input;
}

String? validateNumberInput(String? input, int min, int max) {
  int? number = int.tryParse(input ?? '');
  while (number == null || number < min || number > max) {
    print('Please enter a number between $min and $max');
    input = stdin.readLineSync()?.trim();
    number = int.tryParse(input ?? '');
  }
  return input;
}
