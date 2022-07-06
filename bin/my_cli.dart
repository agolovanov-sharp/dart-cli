import 'package:my_cli/my_cli.dart' as my_cli;
import 'package:my_cli/nullsafe_test.dart' as null_test;
import 'package:my_cli/variables.dart' as variables;
import 'package:my_cli/builtin_types.dart' as typesTest;
import 'package:my_cli/functions.dart' as functions;
import 'package:my_cli/operators.dart' as operators;
import 'package:my_cli/classes.dart' as classes;

void printNumber(int aNumber) {
  print('The number is $aNumber');
}

void main(List<String> arguments) {
  var result = my_cli.calculate();
  printNumber(result);

  null_test.tryToPass();

  variables.tapVariables(); // should throw in develop mode
  variables.lateVarUsing();
  variables.immutableConstant();

  typesTest.stringsParse();
  typesTest.stringTest();
  typesTest.listsExperiments();
  typesTest.setsExperiment(true);

  print('-------FUNCTIONS------');

  print(functions.buildMessages());
  functions.anonymousFunciont();
  functions.isEqualFuncs();

  print('--------OPERATORS-------');

  operators.testCascade();
  print('--------CLASSES-------');

  classes.tryChangeFinal();
  classes.testConstructors();
}
