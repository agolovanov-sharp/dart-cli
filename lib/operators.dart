class User {
  String? name;
  String? address;
  int? age;

  @override
  String toString() {
    return 'I am $name living in $address. I am $age old';
  }
}

void testCascade() {
  var person = User()
    ..name = 'Alex'
    ..address = 'Moscow'
    ..age = 22;

  print(person);
}
