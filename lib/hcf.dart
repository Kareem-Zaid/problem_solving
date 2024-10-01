// Get the HCF (Highest Common Factor) / GCD (Greatest Common Divisor) of two numbers
// The HCF of two numbers is the largest number that divides both of them.

import 'dart:io' show stdin;

// int getHcf(int n1, n2) { // "n2" is dynamic, not integer. This different than defining variables in declaration statements.
int getHcf([int? num1, int? num2]) {
  print('Enter the first number:');
  final int n1 = num1 ?? int.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  final int n2 = num2 ?? int.parse(stdin.readLineSync()!);

  final List<int> n1Factors = [];
  final List<int> n2Factors = [];
  int hcf = 1;
  // late int hcf;

  for (var i = 1; i < n1 + 1; i++) {
    if (n1 % i == 0) n1Factors.add(i);
  }
  for (var i = 1; i < n2 + 1; i++) {
    if (n2 % i == 0) n2Factors.add(i);
  }
  print('1st number factors: $n1Factors');
  print('2nd number factors: $n2Factors');
  if (n1 < n2) {
    // n1Factors..sort()..reversed;
    n1Factors.sort((a, b) => b.compareTo(a));
    print('Sorted 1st number factors: $n1Factors');
    for (var n1Factor in n1Factors) {
      if (n2Factors.contains(n1Factor)) {
        hcf = n1Factor;
        break;
      }
    }
  } else {
    n2Factors.sort((a, b) => b.compareTo(a));
    print('Sorted 2nd number factors: $n2Factors');
    for (var n2Factor in n2Factors) {
      if (n1Factors.contains(n2Factor)) {
        hcf = n2Factor;
        break;
      }
    }
  }

  return hcf;
}

// int getHcf([int? num1, int? num2]) {
//   print('Enter the first number:');
//   final int n1 = num1 ?? int.parse(stdin.readLineSync()!);
//   print('Enter the second number:'); // Fixed the second prompt
//   final int n2 = num2 ?? int.parse(stdin.readLineSync()!);

//   // Use Euclid's Algorithm to calculate HCF
//   int hcf = euclidHcf(n1, n2);

//   print('The HCF of $n1 and $n2 is: $hcf');
//   return hcf;
// }

// // Euclid's Algorithm for HCF (Greatest Common Divisor)
// int euclidHcf(int a, int b) {
//   while (b != 0) {
//     int temp = b;
//     b = a % b;
//     a = temp;
//   }
//   return a;
// }
// https://chatgpt.com/c/66e78405-5828-8007-b7b1-17d0e0f03ddb

// https://prepinsta.com/ibm/coding/
// #include<iostream>
// int gcd(int,int);
// int main()
// {
//     int m,n,ans;
//     scanf("%d",&m);
//     scanf("%d",&n);
//     while(m!=n)
//     {
//         if(m>n)
//         {
//             m=m-n;
//         }
//         else
//         {
//             n=n-m;
//         }
//     }
//     printf("%d",m);
//     return 0;
// }
