void main() {
 
  // 1.- Variables
  String myName = "Irving";
  int age = 22;
  bool isStudent = false;

  // 2.- Interpolation
  print("Nice to meet you, $myName");

  // Analyzing data types
  print("##################################");
  print(
    "The value stored in the variable myName is $myName and the data type is: ${myName.runtimeType}",
  );

  print("##################################");
  print(
    "The value stored in the variable age is $age and the data type is: ${age.runtimeType}",
  );

  print("##################################");
  print(
    "The value stored in the variable isStudent is $isStudent and the data type is: ${isStudent.runtimeType}",
  );

  // 3.- Control of variable value modification
  late double? cumulativeAverage = 0.0;
  print("Your cumulative average has not been calculated yet");
  
  print("3 doritos later");
  cumulativeAverage = 9.4;
  print("The value of the cumulative average has been updated, now it is: $cumulativeAverage");

  // const and final are for values that do not change
  int currentSemester = 10;
  print("4 months later... blood spilled and an internship assigned afterwards");
  print("Your current semester is: $currentSemester");
  
  // 4.- Accessing primitive methods
  print("###################################");
  print("The initial value and format of myName is: $myName");
  print("Using primitive methods we can transform it to all UPPERCASE, and the result is: ${myName.toUpperCase()}");
  
  // 5.- Nested execution of Dart instructions
  print(1 + 1);
  // print({1 + "1"});
  print("1" + "1");
}

