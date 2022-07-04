import 'package:my_cli/my_cli.dart' as my_cli;
import 'package:my_cli/nullsafe_test.dart' as null_test;
import 'package:my_cli/variables.dart' as variables;

void printNumber(int aNumber) {
  print('The number is $aNumber');
}

void main(List<String> arguments) {
  var result = my_cli.calculate();
  printNumber(result);

  null_test.tryToPass();

  variables.tapVariables(); // should throw in develop mode
}
