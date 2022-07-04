int? initialCount;
int mustHaveValue = 0;

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
