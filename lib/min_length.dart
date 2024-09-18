// A group of people and two monsters.
// They split these groups among the people to kill them.
// When monsters come into a group, people leave it.
// Breaking the group continues due to the monster's entry.
// At last, the group with min length will be killed by the monsters.
// Two monsters namely "@" and "$", and people are a String "P".
// Find out the min length of the group that is to be killed by the monsters.
// Constraints: 2 <= length of string <= 10^9

import 'dart:math';

int minLen(String group) {
  // late int minLength;
  // int minLength = double.infinity.toInt(); // Start with an "infinite" large num
  int minLength = double.maxFinite.toInt(); // Max real num b4 hitting infinity
  print('Initial (maxFinite) minLength: $minLength');
  List<int> lengths = [];
  final List<String> subgroups = group.split(RegExp(r'[@$]')).toList();
  print(subgroups);
  for (var subgroup in subgroups) {
    lengths.add(subgroup.length);
  }
  print(lengths);
  minLength = lengths.reduce((a, b) => min(a, b));
  return minLength;
}

final String peopleMonstersGroup = r'PPPPPP@PPPPPPPPP$PPPP@PPPPP$PPP';

// int minLen(String mainGroup) {
//   late int minLength;
//   final List<String> groups = mainGroup.split(RegExp(r'[@$]')).toList();
//   print(groups);
//   for (var i = 0; i < groups.length; i++) {
//     if (groups[i].length < groups[(i + 1) % groups.length].length) {
//       minLength = groups[i].length;
//     }
//     minLength = min(groups[i].length, groups[(i + 1) % groups.length].length);
//   }
//   return minLength;
// }

// final String groupPeopleMonsters = r'PPPPPP@PPPPPPPPP$PPPP@PPPPP$PPP';
// final String groupPeopleMonsters0 = 'PPPPPP@PPPPPPPPP\$PPPP@PPPPP\$PPP';
  // print('groupPeopleMonsters: $groupPeopleMonsters'); // Same...
  // print('groupPeopleMonsters0: $groupPeopleMonsters0'); ... result

// Problem solution in javascript one liner:
// Math.min(...str.split(/[@$]/g).map((item) => item.length));
// https://www.youtube.com/watch?v=9_R6xZpLqGc // Comments
// import java.util.*;
// public class Main
// {
// 	public static void main(String[] args) {
// 	    Scanner sc=new Scanner(System.in);
// 	    String s=sc.next();
// 	    int c=0,min=Integer.MAX_VALUE;
// 	    for(int i=0; i<s.length(); i++)
// 	    {
// 	        if(s.charAt(i)=='P')
// 	        {
// 	            c++;
// 	        }
// 	        else
// 	        {
// 	            min=Math.min(c,min);
// 	            c=0;
// 	        }
// 	    }
// 		System.out.println(min);
// 	}
// }
// This is the code having O(n) time complexity, code works for each and every edge cases, 
// firstly I have taken min variable and stored the maximum value in it , as I have to find minimum value, I have run a for loop and for every character I am checking if it is equal to 'P' then I am doing c++ and if not then I am finding min value by using in built function Math.min in JAVA and putting the value of c as 0 when characters like @ or $ is coming .