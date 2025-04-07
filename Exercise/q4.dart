/*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
*/
void main() {
  int start = 1;
  int end = 7;
  print(primeNumbers(start, end));
}

List primeNumbers(int start, int end) {
  List<int> numbersList = [];
  for (int i = start; i <= end; i++) {
    if (i >= 2) {
      for (int j = 2; j <= end; j++) {
        if (i % j == 0) {
        } else {
          numbersList.add(i);
        }
      }
    }
  }
  return numbersList;
}
