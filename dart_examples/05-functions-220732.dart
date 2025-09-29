void main() {
  void localFunction() {
    print("This is a local function and it can only be called inside main");
  }

  localFunction();
  print("+++++++++++++++++++++++++++++");
  print(globalFunction());
  print("+++++++++++++++++++++++++++++");
  print(greetEveryone());

  print("--------------------------------");
  print("Test 1: ${addTwoNumbers(10, 20)}");
  // print("Test 2: ${addTwoNumbers(25, "10")}");
  print("Test 3: ${addTwoNumbersWithOptional(25)}");
  print("Test 4: ${greetPerson(name: "Irving")}");
  print("Test 5: ${greetPerson(name: "Samantha", message: "Good afternoon")}");
}

String globalFunction() {
  return "This is a global function and it can be called from anywhere in the program";
}

String greetEveryone() => globalFunction() + ": Greetings to everyone";
int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersWithOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = "Hello"}) {
  return "$message, $name";
}
