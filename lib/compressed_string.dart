// Consider a string, S, that is a series of characters, each followed by its frequency as an integer. The string is not compressed correctly, so there may be multiple occurrences of the same character. A properly compressed string will consist of one instance of each character in alphabetical order followed by the total count of that character within the string.
// Compressed is like "k3z2s4z3k4", and the job is to decompress it to "kkkkkkksssszzzzz", sorted alphabetically. [1]

import 'dart:io';

String decompressString([String? input]) {
  String decomprS = '';
  final Map<String, List<int>> chars = {};

  if (input == null) print('Enter the to-be-compressed text:');
  final String s = input ?? stdin.readLineSync()!;
  // final splitChars = s.split('').toList();

  for (var i = 0; i < s.length; i++) {
    if (RegExp(r'\d').hasMatch(s[i])) {
      // Map the string char with its int frequency
      if (!chars.containsKey(s[i - 1])) {
        chars[s[i - 1]] = [int.parse(s[i])]; // Map the 1st instance
      } else {
        chars[s[i - 1]]!.add(int.parse(s[i])); // Map other instances
      }
    }
  }
  print('Chars map: $chars');

  // Form a new map, with each entry consisting of a string character as the key and int combined sum of frequency as the value
  final Map<String, int> charsFreqs = chars.map((k, listV) {
    return MapEntry(k, listV.reduce((a, b) => a + b));
  });
  print('Chars & corresponding frequencies map: $charsFreqs');

  // Decompress characters by repeating characters according to frequency
  for (var entry in charsFreqs.entries) {
    for (var i = 0; i < entry.value; i++) {
      decomprS = decomprS + entry.key;
    }
  }
// Split the string into a list of characters, and sort them alphabetically
  final List<String> charList = decomprS.split('')..sort();

// Sort the list in place
  // charList.sort();

// Join the sorted list back into a single string
  final String decomprSortedS = charList.join();

  return decomprSortedS;
}

final String compressedString = 'k7z2s4k1z3';

// https://chatgpt.com/c/66e78405-5828-8007-b7b1-17d0e0f03ddb
// String decompressString([String? input]) {
//   String decomprS = '';
//   Map<String, int> charsFreqs = {};

//   // Input handling
//   if (input == null) {
//     print('Enter the compressed string:');
//     input = stdin.readLineSync()!;
//   }

//   // Parse the input string
//   for (int i = 0; i < input.length; i++) {
//     if (RegExp(r'\d').hasMatch(input[i])) {
//       String char = input[i - 1];
//       int freq = int.parse(input[i]);
//       charsFreqs[char] = (charsFreqs[char] ?? 0) + freq;
//     }
//   }

//   // Decompress the string
//   charsFreqs.forEach((char, freq) {
//     decomprS += char * freq;
//   });

//   return decomprS;
// }


// String compressString([String? input]) {
//   String comprS = '';

//   if (input == null) print('Enter the to-be-compressed word');
//   final String s = input ?? stdin.readLineSync()!;
//   // final splitChars = s.split('').toList();
//   for (var i = 0; i < s.length; i++) {
//     if (RegExp(r'\d').hasMatch(s[i])) comprS = '$comprS${s[i - 1]}1';
//   }
//   print(comprS);

//   return comprS;
// }

// final String uncompressedString = 'kkkkkkk7zz2ssss4'; // This is not what is required.. See [1].
