import 'dart:math';

const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;
  double? distanceFromOrigin;

  Point(this.x, this.y): distanceFromOrigin = sqrt(x*x + y*y);

  Point.origin()
      : x = xOrigin,
        y = yOrigin;

  @override
  String toString() {
    return '$x : $y';
  }
}

class Point3d extends Point {
  final double z;

  Point3d.inOne()
      : z = 1.0,
        super.origin();

  @override
  String toString() {
    return '$x : $y : $z';
  }
}

void tryChangeFinal() {
  var p1 = Point(22, 22.2);

  // compile error
  // p1.x = 1.2;

  var origin = Point.origin();
  print(origin);

  var origin3d = Point3d.inOne();
  print(origin3d);
}

class Product {
  String name;
  String date;

  Product.withDate({required this.date, required this.name});
}

class ProprietarProduct extends Product {
  String manufacturer;

  ProprietarProduct({required super.name, required this.manufacturer})
      : super.withDate(date: '2022.02.02');

  @override
  String toString() {
    return 'name: $name\ndate: $date\nmanufacturer: $manufacturer';
  }
}

void testConstructors() {
  var windows = ProprietarProduct(name: 'Windows', manufacturer: 'Microsoft');
  print(windows);
}
