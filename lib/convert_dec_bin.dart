import 'dart:io';
import 'dart:math';

// Change Decimal Number to Binary
int decToBin([int? decNum]) {
  String nBStr = '';

  print('Enter a decimal number: ${decNum ?? ''}');
  int nD = decNum ?? int.parse(stdin.readLineSync()!);
  // for (var i = 0; nD > 0; i++) {}
  while (nD > 0) {
    // nBStr = nBStr + (nD % 2).toString();
    // nD = nD ~/ 2;
    nBStr += (nD % 2).toString(); // Interger division modulus/remainder
    nD ~/= 2; // Interger division quotient
  }
  final int nB = int.parse(nBStr.split('').reversed.join());
  return nB;
}

// Change Binary Number to Decimal
int binToDec([String? binNum]) {
  int nD = 0;

  print('Enter a binary number: ${binNum ?? ''}');
  String nB = binNum ?? stdin.readLineSync()!.trimRight();

  // Iterate string chars (bits) backward from the last (leftmost) element to the first
  for (var i = nB.length - 1; i >= 0; i--) {
    // Sum of the multiplication of bit value and 2^(bit index), starting from the leftmost bit
    nD += int.parse(nB[i]) * pow(2, nB.length - 1 - i).toInt();
  }
  return nD;
}
