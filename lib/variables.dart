int? initialCount;
int mustHaveValue = 0;
late String description;

void tapVariables() {
  // assert(initialCount != null); will throw dev time exception
  assert(initialCount == null);

  var emptyVal;

  assert(emptyVal == null);
}

void shouldInitVars() {
  int count;
  bool shouldInit = false;

  if (shouldInit) {
    count = 0;
  }

  // error - using of unassigned variable
  // print(count);
}

void lateVarUsing() {
  description = 'I have value';
  print(description);
}

void immutableConstant() {
  const defaultUsers = ['Alex', 'Rick'];
  // defaultUsers = []; error - cant be assigned
  var actualUsers = defaultUsers;
  // actualUsers.add('Ironman'); // runtime error - list is immutable
  actualUsers = ['Ironman']; // works - reassign var

  print(actualUsers);
}
