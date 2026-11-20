import "dart:io";
void main() {
  print("enter the first  number :");
  String ? x=stdin.readLineSync();
  double ? num1=double.tryParse(x!);
  print("enter the second number :");
  String ? z=stdin.readLineSync();
  double? num2 = double.tryParse(z!);
  print("Enter  a operation:");
  String ? operation=stdin.readLineSync();
  double result;
  if(operation=="+"){
   result=num1 !+num2 !;
  }
  else if(operation=="-"){
    result=num1 ! - num2 !;
  }
  else if(operation=="*"){
    result=num1 ! * num2 !;
  }
  else if(operation=="/") {
    if (num2 == 0) {
      print('Error: cannot divide by zero');
      return;
    }
    else {
      result=num1 ! / num2 !;
    }
  }
  else if(operation=="%"){
    result=num1 ! % num2 !;
  }
  else {
    print('Error: invalid operation');
    return;
  }
   if (result % 1==0 ) {
     print("Result: ${result.toInt()}");
   }
   else
     print("Result: $result");
}