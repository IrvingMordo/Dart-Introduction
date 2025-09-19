void main() {
  void localFunction() {
    print("Esta es una funcion local y solo se invoca dentro del main");
  }

  localFunction();
  print("+++++++++++++++++++++++++++++");
  print(globalFunction());
  print("+++++++++++++++++++++++++++++");
  print(greetEveryone());

  print("--------------------------------");
  print("Test 1: ${addTwoNumbers(10, 20)}");
  // print("Tests 2: ${addTwoNumbers(25, "10")}");
  print("Tests 3: ${addTwoNumbersWithOptional(25)}");
  print("Tests 4: ${greetPerson(name: "Irving")}");
  print("Tests 5: ${greetPerson(name: "Samantha", message: "Buenas tardes")}");
}

String globalFunction() {
  return "Esta es una funcion global y se puede invocar desde cualquier parte del programa";
}

String greetEveryone() => globalFunction() + ": Saludos a todos";
int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersWithOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = "Hola"}) {
  return "$message, $name";
} 

 
