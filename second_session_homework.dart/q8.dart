/*
Nested If for Temperature Ranges
Objective: Use nested if statements to check multiple conditions.
Instructions:
- Create an integer variable temperature.
- If temperature is above 30, print 'It's hot!'.
- If it's between 15 and 30, print 'It's warm.'.
- Otherwise, print 'It's cold.'.
*/
void main() {
  int temperature = 30;
  if (temperature > 30) {
    print('Its hot!');
  } else if (temperature > 15 || temperature < 30) {
    print('its warm');
  } else {
    print('its cold');
  }
}
