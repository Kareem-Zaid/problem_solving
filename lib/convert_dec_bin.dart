import 'dart:io';

// Change Decimal Number to Binary
int decToBin([int? decNum]) {
  String nBStr = '';

  print('Enter a decimal number: ${decNum ?? ''}');
  int nD = decNum ?? int.parse(stdin.readLineSync()!);
  // for (var i = 0; i < nD ~/ 2; i++) {}
  while (nD > 0) {
    nBStr = nBStr + (nD % 2).toString(); // Interger division modulus/remainder
    nD = nD ~/ 2; // Interger division quotient
  }
  final int nB = int.parse(nBStr.split('').reversed.join());
  return nB;
}

// Change Binary Number to Decimal
int binToDec([String? binNum]) {
  String nDStr = '';

  print('Enter a binary number: ${binNum ?? ''}');
  String nB = binNum ?? stdin.readLineSync()!;
  // while (nB > 0) {
  //   nDStr = nDStr + (nB % 2).toString(); // Interger division modulus/remainder
  //   nB = nB ~/ 2; // Interger division quotient
  // }
  for (var bit in nB.split('')) {}

  final int nD = int.parse(nDStr.split('').reversed.join());
  return nD;
}
