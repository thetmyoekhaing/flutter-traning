// // 1. User register to play game (include money)
// // 2. Earn ur money
// // 3. Guess ur number between 1-9
// // 4. Calculate win or lose with the process of +2 or -2
// // 5. Check user can play more game with his money

import 'dart:io';
import 'dart:math';

/// This class is to guess the number between 1 - 9 and if you win , you can continue to play more
class Guess {
  final String name;
  //user money
  late int _balance = 0;

  late int? userGuessNumber;

  late int earn;

  bool win = false;

  get getBalance {
    return _balance;
  }

  set setBalance(int value) {
    _balance += value;
  }

  void winOrLose() {
    var random = Random();
    final int randomNumber = random.nextInt(9) + 1;
    int difference = (randomNumber - userGuessNumber!).abs();
    if (difference <= 2) {
      print(
          "You win , your guess number is $userGuessNumber and random number is $randomNumber");
      win = true;
    } else {
      print("you lose , your random numer is $randomNumber");
      win = false;
    }
  }

  Guess({required this.name, required this.earn, int? this.userGuessNumber});
}

void main() {
  String? username;

  String? earn;

  String? balance;

  String? max;

  late int earnMoney, balanceMoney;

  username = checkNullEmpty(output: "Enter your username", input: username);

  balance = checkNullEmpty(
    output: 'Enter your balance',
    input: balance,
    validator: (input) =>
        validateNumberInput(input: input, min: 1, max: 999999),
  );
  balanceMoney = int.parse(balance!);

  earn = checkNullEmpty(
      output: "Enter your earnings",
      input: earn,
      validator: (input) =>
          validateNumberInput(input: input, min: 1, max: balanceMoney));
  earnMoney = int.parse(earn!);

  max = checkNullEmpty(
    output: 'Enter your guess number',
    input: max,
    validator: (input) => validateNumberInput(input: input, min: 1, max: 9),
  );

  Guess user1 =
      Guess(name: username!, earn: earnMoney, userGuessNumber: int.parse(max!));
  user1.setBalance = balanceMoney;
  user1.winOrLose();

  if (user1.win == true) {
    user1.setBalance = earnMoney;
    print("Your balance now is ${user1.getBalance}");
  } else {
    user1.setBalance = -earnMoney;
    print("Your current remain balance ${user1.getBalance}");
  }
}

// String? checkNullEmpty(
//     {required String output,
//     String? input,
//     bool isMax = false,
//     bool isBalance = false}) {
//   while (input == null || input.trim().isEmpty) {
//     print(output);
//     input = stdin.readLineSync()?.trim();
//   }
//   if (isMax) {
//     int? maxNumber = int.tryParse(input);
//     while (maxNumber == null || maxNumber < 1 || maxNumber > 9) {
//       print("Max number must be between 1 and 9, please try again.");
//       input = stdin.readLineSync()?.trim();
//       maxNumber = int.tryParse(input!);
//     }
//     return input;
//   } else if (isBalance) {
//     int? balanceInt = int.tryParse(input);
//     while (balanceInt == null || balanceInt.isNegative) {
//       print("Please type valid number");
//       input = stdin.readLineSync()?.trim();
//       balanceInt = int.tryParse(input!);
//     }
//   } else {
//     return input;
//   }
//   return null;
// }

String? checkNullEmpty(
    {required String output,
    String? input,
    String? Function(String?)? validator}) {
  while (input == null || input.trim().isEmpty) {
    print(output);
    input = stdin.readLineSync()?.trim();
  }
  if (validator != null) {
    input = validator(input);
  }
  return input;
}

String? validateNumberInput(
    {required String? input, required int min, required int max}) {
  int? number = int.tryParse(input ?? '');
  while (number == null || number < min || number > max) {
    print('Try again!!! Please enter a number between $min and $max');
    input = stdin.readLineSync()?.trim();
    number = int.tryParse(input ?? '');
  }
  return input;
}

// String? validateGuessNumber(String? input) {
//   return validateNumberInput(input: input, min: 1, max: 9);
// }
