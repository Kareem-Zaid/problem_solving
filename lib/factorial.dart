import 'dart:io';

// Calculate the factorial of an integer number

// Recursive
int factorial([int? num, bool isFirstCall = true]) {
  if (isFirstCall) print('Enter an integer number: ${num ?? ''}'); // [1]
  int n = num ?? int.parse(stdin.readLineSync()!);

  if (n <= 0) throw ArgumentError('Enter a positive integer number');
  if (n == 1) return 1;

// int result = n * factorial(n - 1, false);

  return n * factorial(n - 1, false); // 'false' passed to avoid reprinting [1]
}

// Non-recursive
// int factorial([int? num]) {
//   print('Enter an integer number: ${num ?? ''}');
//   int n = num ?? int.parse(stdin.readLineSync()!);
//   if (n > 0) {
//     int result = n;
//     while (n > 1) {
//       result = result * (n - 1);
//       n--;
//     }
//     return result;
//   } else {
//     throw ArgumentError('Enter a positive integer number');
//   }
// }

// Recursive (failed)
// int factorial(int n) {
//   int result = 1;
//   while (n > 1) {
//     result = n * factorial(n - 1);
//   }
//   return result;
// }