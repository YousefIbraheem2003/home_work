/*
9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
10. For-
*/

void main() {
  Rectangle rect = Rectangle(5, 10);
  print("Area: ${rect.area}");
}

class Rectangle {
  final double _width;
  final double _height;

  Rectangle(this._width, this._height);

  double get area => _width * _height;
}
