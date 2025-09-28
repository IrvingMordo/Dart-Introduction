abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin class Oviparous {
  void fly() => print('I am flying!');
}

mixin class Walker {
  void walk() => print('I am walking!');
}

mixin class Swimmer {
  void swim() => print('I am swimming!');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Oviparous, Walker {}

class Cat extends Mammal with Walker {}

class Pigeon extends Bird with Walker, Oviparous {}

class Duck extends Bird with Walker, Oviparous, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Oviparous {}

void main() {
  final flipper = Dolphin();
  print("--------------------------------");
  print("Flipper instance of type Dolphin");
  flipper.swim();
  print("--------------------------------"); 

  final garfiled = Cat();
  print("--------------------------------");
  print("Garfield instance of type Cat");
  garfiled.walk();
  print("--------------------------------"); 

  final donald = Duck();
  print("--------------------------------"); 
  print("Donald instance of type duck");
  donald.walk();
  donald.fly();
  donald.swim();
  print("--------------------------------"); 
}
