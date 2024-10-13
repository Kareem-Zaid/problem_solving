// ignore_for_file: unused_import

import 'package:problem_solving/compressed_string.dart';
import 'package:problem_solving/convert_dec_bin.dart';
import 'package:problem_solving/decode_ascii.dart' as decode;
import 'package:problem_solving/factorial.dart';
import 'package:problem_solving/fizz_buzz.dart';
import 'package:problem_solving/format_time.dart';
import 'package:problem_solving/lcm.dart';
import 'package:problem_solving/min_length.dart'
    show peopleMonstersGroup, minLen;
import 'package:problem_solving/hcf.dart';
import 'package:problem_solving/test.dart';

void main(/* List<String> arguments */) {
  try {
    // Decode a reversed ASCII values to characters so as to reveal the password
    // print('Decoded password: ${decode.decodeAscii(decode.asciiStrRev)}');

    // Find out the min length of the group of "P" people to be killed by the monsters "@" & "$"
    // print('Min length of killed group: ${minLen(peopleMonstersGroup)}');

    // Get the HCF (Highest Common Factor) / GCD (Greatest Common Divisor) of two numbers
    // print('HCF of the two nums: ${getHcf(/* num1, num2 */)}'); // Optional args

    // Get the LCM (Least Common Multiple) of two numbers
    // print('LCM of the two nums: ${getLcm()}'); // Either arguments or terminal

    // Compress a string that is a series of characters, each followed by its frequency as an integer.
    // print('Compressed text: ${decompressString(compressedString)}');

    // Convert Decimal Number to Binary
    // print('Binary form of the number: ${decToBin()}');

    // Convert Binary Number to Decimal
    // print('Binary form of the number: ${binToDec()}');

    // Given a number n, for each integer i in the range from 1 to n inclusive, print one specific value per line as per given conditions
    // print('FizzBuzz result:');
    // fizzBuzz(7);

    // print('Test output: '); // List of lists of lists -_- Come Everyday :v

    // Calculate the factorial of an integer number
    print('The factorial of the number: ${factorial()}');

    // Format time from 24-hour to 12-hour
    FormatTime.formatTime();
  } catch (e) {
    print('Caught error: $e');
    // } finally {
    //   print("'finally' the end");
  }
}
