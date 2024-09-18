import 'package:problem_solving/decode_ascii.dart' as decode;
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(decode.decodeAscii(decode.asciiStrRev), 42);
  });
}
