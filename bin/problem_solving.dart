// ignore_for_file: unused_import

import 'package:problem_solving/compressed_string.dart';
import 'package:problem_solving/convert_dec_bin.dart';
import 'package:problem_solving/decode_ascii.dart' as decode;
import 'package:problem_solving/min_length.dart'
    show peopleMonstersGroup, minLen;
import 'package:problem_solving/hcf.dart';

void main(/* List<String> arguments */) {
  // Decode a reversed ASCII values to characters so as to reveal the password
  // print('Decoded password: ${decode.decodeAscii(decode.asciiStrRev)}');

  // Find out the min length of the group of "P" people to be killed by the monsters "@" & "$"
  // print('Min length of killed group: ${minLen(peopleMonstersGroup)}');

  // Get the HCF (Highest Common Factor) / GCD (Greatest Common Divisor) of two numbers
  // print('HCF of the two nums: ${getHcf(/* num1, num2 */)}'); // Optional args

  // Compress a string that is a series of characters, each followed by its frequency as an integer.
  // print('Compressed text: ${decompressString(compressedString)}');

  // Convert Decimal Number to Binary
  print('Binary form of the number: ${decToBin()}');

  // Convert Binary Number to Decimal
  // print('Binary form of the number: ${binToDec()}');
}
