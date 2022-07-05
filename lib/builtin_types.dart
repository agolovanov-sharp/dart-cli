void stringsParse() {
  var strNumber = 22.toString();

  print(strNumber);
}

void stringTest() {
  var result = 'This is string'
      'concatenation over linebreaks';

  print(result);
}

void listsExperiments() {
  var list = ['Car', 22, 'Plain'];
  List<Object>? list2;

  print([...list, ...?list2]); // null-aware spread operator

  list2 = [
    22,
    [1, 2, 3],
    'Vals'
  ];

  print([...list, ...list2]);

  bool isExtendedUI = true;

  var widgets = [
    'Panel',
    'Header',
    'Body',
    if (isExtendedUI) 'Footer',
    if (isExtendedUI) 'Tabbar'
  ];

  print(widgets);

  print('ids: ${[
    'widget-list',
    for (String oneWidget in widgets) '#$oneWidget'
  ]}');
}

void setsExperiment(bool includePlus) {
  var empty = <String>{};
  empty.addAll(['One', 'Two', 'Three', if (includePlus) '+']);

  print('Set contains plus? = ${empty.contains('+')}');
}
