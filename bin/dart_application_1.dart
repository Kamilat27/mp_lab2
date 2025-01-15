import 'dart:io';

void main(List<String> arguments) {
  // 1
  print("1:");
  int num = 5;
  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
  //2
  print("2:");
  bool isVowel = false;
  String c = 'P';
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  vowels.forEach((v) => isVowel = c.toLowerCase() == v ? true : false);

  if (RegExp(r'^[a-zA-Z]$').hasMatch(c)) {
    isVowel = vowels.contains(c) ? true : false;
    print(isVowel ? "Vowel" : "Consonant");
  } else {
    print("The character is not a letter");
  }

// 3
  print("3:");
  if (num > 0) {
    print("Positive");
  } else if (num < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

//4
  print("4:");
  for (int i = 1; i <= 100; i++) {
    print("$i Kamila");
  }
  // 5
  print("5:");
  List<double> nums = [5, 2.8, -2, 8, 2];
  int sum = 0;
  nums.forEach(
      (el) => {if (el > 0 && (el % el.floor() == 0)) sum += el.floor()});
  print("Sum: $sum");
//6
  print("6:");
  for (int i = 1; i <= 10; i++) {
    print("5 * $i = ${5 * i}");
  }
  //7
  print("7:");
  for (int i = 1; i <= 9; i++) {
    print("Multiplication table of $i");
    for (int j = 1; j <= 10; j++) {
      print("$i * $j = ${i * j}");
    }
    print("");
  }
//8
  print(
      "8: Calculator: \nSymbols: \n+ addition,\n- subtraction,\n* multiplication,\n/ division.");
  bool isNum = false;
  stdout.write("Enter first number: ");
  double? n1;

  while (!isNum) {
    try {
      n1 = double.parse(stdin.readLineSync()!);
      isNum = true;
    } catch (err) {
      print("The value entered is not a number, please enter a number");
    }
  }
//Get the symbol
  print("Enter a symbol of operation you want to perform:  ");
  List<String> symbols = ['*', '/', '+', '-'];
  bool isSymbol = false;
  String? s;
  while (!isSymbol) {
    s = stdin.readLineSync();
    if (symbols.contains(s)) {
      isSymbol = true;
    } else {
      print(
          "The value entered does not match the sybols listet above, please try again");
    }
  }
  // Get the second num
  isNum = false;
  double? n2;
  stdout.write("Enter the second number: ");
  while (!isNum) {
    try {
      n2 = double.parse(stdin.readLineSync()!);
      isNum = true;
    } catch (err) {
      print("The value entered is not a number, please enter a number");
    }
  }

  double result = 0;
  switch (s) {
    case '-':
      result = n1! - n2!;
      break;
    case '*':
      result = n1! * n2!;
      break;
    case '/':
      result = n1! / n2!;
      break;
    case '+':
      result = n1! + n2!;
      break;
  }

  print(result);

//9
  print("9:");
  for (int i = 1; i <= 100; i++) {
    if (i != 41) {
      print(i);
    }
  }
}
