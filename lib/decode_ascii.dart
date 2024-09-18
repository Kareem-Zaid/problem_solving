// Decode a reversed ASCII values to characters so as to reveal the password.
// Some of the ASCII values have two digits, and others have three.
// The password only has alphabets [(A-Z) == (65-90) & (a-z) == (97-122)] and blank spaces [ASCII = 32]. (The valid range)
// Constraints: 1 <= |s| <= 10^5; s[i] is an ascii character in the valid range mention above.

String decodeAscii(String input) {
  List<int> validList = [];
  List<int> invalidList = [];
  String decodedStr = '';

  // Reverse the input string
  final String str = input.split('').reversed.join();
  print('Forward string input: $str');

  // Split the forward string into a list of valid ASCII values and obtain the decoded result
  // Incrementing the index by 2
  for (var i = 0; i < str.length - 1; i += 2) {
    // final String x = '${s[i]}${s[i + 1]}'; // Valid, but more verbose
    String x = str[i] + str[i + 1]; // Concatenate two-digit ASCII values
    int xInt = int.parse(x); // Parse the two-digit value
    if (x == '32') {
      // decodedResult = decodedResult + " ";
      decodedStr = "$decodedStr ";
    } else if ((xInt >= 65 && xInt <= 90) || (xInt >= 97 && xInt <= 99)) {
      decodedStr = decodedStr + String.fromCharCode(xInt); // Add the character
    } else if (i + 2 < input.length) {
      x = x + str[i + 2]; // Concatenate three-digit ASCII values
      xInt = int.parse(x); // Re-parse the updated three-digit string
      decodedStr = decodedStr + String.fromCharCode(xInt); // Add the character
      i++; // Skip an extra character
    }
  }

  print('Valid list: $validList');
  print('Invalid values: $invalidList');
  return decodedStr;
}

final String asciiStrRev = '901101101411237957';

void replaceReverse() {
  final revString = '75+97+114+101+101+109+55+50+55'
      .replaceAll('+', '')
      .split('')
      .reversed
      .join();
  print(revString); // 5505559011011014117957
}

// final String asciiStrRev = asciiListRev.join();

String decodeAsciiList(List<String> inputList) {
  List<int> validList = [];
  List<int> invalidList = [];
  List<String> decodedChars = [];

  for (var elementStrRev in inputList) {
    // final String elementStrRev = elementRev.toString();

    // Reverse string ASCII values
    final String elementStr = elementStrRev.split('').reversed.join('');

    final int elementInt = int.parse(elementStr);

    // Add valid ASCII values only
    if (elementInt >= 0 && elementInt <= 255) {
      validList.add(elementInt);

      // Decode the valid values from ASCII codes to characters
      final String decodedChar = String.fromCharCode(elementInt);
      decodedChars.add(decodedChar);
    } else {
      invalidList.add(elementInt);
    }
  }
  print('Valid list: $validList');
  print('Invalid values: $invalidList');
  print('Decoded characters: $decodedChars');

  final String decodedText = decodedChars.join();

  return decodedText;
}

List<String> asciiListRev = [
  '652',
  '57',
  '79',
  '411',
  '101',
  '101',
  '901',
  '55',
  '05',
  '55',
  '207',
]; // Kareem727 == 75+97+114+101+101+109+55+50+55
