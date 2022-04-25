// My Solution to the TwoStrings HackerRank Problem.
// Problem: Compare two strings to see if they have any matching characters, return YES or NO.

func twoStrings(s1: String, s2: String) -> String {
  // Initialize a Set - which rearranges every element into an array with no duplicates.
    return Set(s1).intersection(Set(s2)).isEmpty ? "NO" : "YES"
}

func twoStrings(s1: String, s2: String) -> String {
    Set(s1).isDisjoint(with: Set(s2)) ? "NO" : "YES"
}
