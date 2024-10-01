// Given a number n, for each integer i in the range from 1 to n inclusive, print one value per line as follows:
//  • If iis a multiple of both 3 and 5 print FizzBuzz.
//  • If iis a multiple of3(but not 5), print Fizz.
//  • If iis a multiple of 5 (but not 3, print Buzz.
//  • If iis nota multiple of 30r 5 print the value of i.

//  Function Description
//  Complete the function fizzBuzzin the editor below.

//  fizzBuzz has the following parameter(s):
//  intn: upper limit of values to test (inclusive)
//  Returns: NONE

//  Prints:
//  The function must print the appropriate response
//  for each value i in the set {1, 2, n} in ascending order,
//  each on a separate line.

void fizzBuzz(int n) {
  List<int> arr = [];
  for (var i = 0; i < n; i++) {
    arr.add(i + 1);
    int r = arr[i];
    if (r % 3 == 0 && r % 5 == 0) {
      print('FizzBuzz');
    }
    if (r % 3 == 0 && r % 5 != 0) {
      print('Fizz');
    }
    if (r % 3 != 0 && r % 5 == 0) {
      print('Buzz');
    }
    if (r % 3 != 0 && r % 5 != 0) {
      print(i + 1);
    }
  }
}
