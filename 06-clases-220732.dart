void main() {
  final Hero spiderman = Hero(name: "Peter", power: "Like a spider");
  print("""
  ${spiderman.toString()}
  Nombre: ${spiderman.name}
  Poder: ${spiderman.power}
  """);

  final Hero superman = Hero(name: "Clark", power: "Volar");
  print("""
${superman.toString()}
  Nombre: ${superman.name}
  Poder: ${superman.power}
  """);

  final Hero batman = Hero(name: "Bruce");
  print("""
${batman.toString()}
  Nombre: ${batman.name}
  Poder: ${batman.power}
  """);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, String this.power = "Sin poder"});

  @override
  String toString() {
    return '$name - $power'; 
  }
}
