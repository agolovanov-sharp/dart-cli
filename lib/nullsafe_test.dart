void _notNullString(String notNull) {
  print('Length of notNull is ${notNull.length}');
}

void tryToPass() {
  // notNullString(null);

  Object obj = 'Test string';
  // invalid
  // _notNullString(obj);

  _notNullString(obj as String); // valid
}
