void main() {
  final Hero spiderman = Hero(name: "Peter", power: "Like a spider");
  print("""
  ${spiderman.toString()}
  Name: ${spiderman.name}
  Power: ${spiderman.power}
  """);

  final Hero superman = Hero(name: "Clark", power: "Fly");
  print("""
${superman.toString()}
  Name: ${superman.name}
  Power: ${superman.power}
  """);

  final Hero batman = Hero(name: "Bruce");
  print("""
${batman.toString()}
  Name: ${batman.name}
  Power: ${batman.power}
  """);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "No power"});

  @override
  String toString() {
    return '$name - $power'; 
  }
}
