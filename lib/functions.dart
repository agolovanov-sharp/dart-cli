String buildMessages(
    {List<String> goods = const ['Onion', 'Smartphone', 'Table'],
    Map<String, int> prices = const {
      'Onion': 22,
      'Smartphone': 22742,
      'Table': 5000
    }}) {
  return goods.map((e) => '$e is ${prices[e]}').toList().join('; \n');
}

void anonymousFunciont() {
  var list = ['Cofee', 'Tea', 'Tequila', 'Whiskey'];

  list.forEach((element) {
    print('${list.indexOf(element)}. $element');
  });
}

class TestFunctionEquality {
  void instMethod() {}
}

void isEqualFuncs() {
  var one = TestFunctionEquality();
  var two = TestFunctionEquality();

  print(
      'one.instMethod != two.instMethod: ${one.instMethod != two.instMethod}');
  print(
      'identical(one.instMethod, two.instMethod): ${identical(one.instMethod, two.instMethod)}');
}
