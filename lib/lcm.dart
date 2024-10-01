// Get the LCM (Least Common Multiple) of two numbers
// The LCM of two numbers is the lowest possible number that can be divisible by both numbers.

import 'dart:io';

int getLcm([int? num1, int? num2]) {
  print('Enter the first number: ${num1 ?? ''}');
  int n1 = num1 ?? int.parse(stdin.readLineSync()!.trimRight());

  print('Enter the second number: ${num2 ?? ''}');
  int n2 = num2 ?? int.parse(stdin.readLineSync()!.trimRight());

  int n1m = n1; // n1 multiples
  int n2m = n2; // n2 multiples
  int lcm = n1 * n2;
  if (n1 < n2) {
    // Loop n2 multiples until any is divisible by n1, which is LCM
    for (var i = 1; n2m % n1 != 0; i++) {
      n2m = n2 * i;
    }
    lcm = n2m; // Assign LCM out of the loop to avoid unnecessary assignments
  } else {
    // Loop n1 multiples until any is divisible by n2, which is LCM
    for (var i = 0; i < n2; i++) {
      n1m = n1 * (i + 1);
      if (n1m % n2 == 0) break;
    }
    lcm = n1m; // Assign LCM after the loop for a better performance
  }
  return lcm;
}

// int getLcm([int? num1, int? num2]) {
//   // Read numbers if not provided
//   int n1 = num1 ?? int.parse(stdin.readLineSync()!);
//   int n2 = num2 ?? int.parse(stdin.readLineSync()!);

//   // Function to calculate HCF using Euclidean algorithm
//   int getHcf(int a, int b) {
//     while (b != 0) {
//       int temp = b;
//       b = a % b;
//       a = temp;
//     }
//     return a;
//   }

//   // Calculate LCM using HCF
//   // Using relationship between LCM & HCF: LCM(a, b) = (a * b) / HCF(a, b)

//   int hcf = getHcf(n1, n2);
//   int lcm = (n1 * n2) ~/ hcf;

//   return lcm;
// }
// https://chatgpt.com/c/66e78405-5828-8007-b7b1-17d0e0f03ddb
