/*
What is the difference between var and dynamic in Dart? Provide an example of
each.

answer : var is not a data type it is an key word that can be any data type and once it
declared and gave an value the type of it canot be changed ,but dynamic is an data type 
that can accept any type of varaiables and its type can be changed again after declaring it

*/
void main() {
  var value = 5;

  dynamic value1 = 5;
  value1 = 'yousef';
}
