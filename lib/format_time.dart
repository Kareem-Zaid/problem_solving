import 'dart:io';

class FormatTime {
  static late int hours, mins;

// Format time from 24-hour to 12-hour
  static void formatTime() {
    stdout.write("Enter time in 24H format (HH:MM): ");
    String? time24H = stdin.readLineSync(); // Reads user input

    if (time24H != null && time24H.length == 5) {
      parseTime(time24H);
      print(hours); // Equivalent to System.out.println(hours)
      stdout.write(mins); // Equivalent to System.out.print(mins)
    } else {
      print("Invalid input. Please enter time in HH:MM format.");
    }
  }

// Parse string time to into integer hours and minutes
  static void parseTime(String timeStr) {
    // Use substring like in Java
    String hhStr = timeStr.substring(0, 2);
    String mmStr = timeStr.substring(3, 5);

    // Parse the strings into integers
    hours = int.parse(hhStr);
    mins = int.parse(mmStr);
  }
}

// void main() {}
