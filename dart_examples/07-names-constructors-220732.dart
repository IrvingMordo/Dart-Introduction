void main() {
  final comicCharacters batman = comicCharacters(
    name: 'Bruce Wayne',
    alias: 'Batman',
    power: 'Rich man',
    role: 'Hero',
    isAlive: true,
    enterprise: 'DC',
  );
  print(batman);
  print("-----------------------------------");
  //Test two.
  final comicCharacters thor = comicCharacters(
    name: 'Thor Odinson',
    power: 'God of Thunder',
    role: 'Hero',
    isAlive: true,
    enterprise: 'Marvel',
  );
  print(thor);
  print("-----------------------------------");
  //Test three
  final comicCharacters deadpool = comicCharacters.fromJson({
    'name': 'Wade Wilson',
    'alias': 'Deadpool',
    'role': 'Anti-Hero',
    'isAlive': true,
    'enterprise': 'Marvel',
  });
  print(deadpool.toString());
  print("-----------------------------------");
  //Test four
  final comicCharacters peter = comicCharacters.fromJson({
    'name': 'Peter W.',
    'isAlive': true,
    'enterprise': 'Marvel',
  });
  print(peter.toString()); 
}

class comicCharacters {
  String name;
  String? alias;
  String power;
  String role;
  bool isAlive = true;
  String? enterprise;

  comicCharacters({
    required this.name,
    this.alias,
    this.power = 'No power',
    this.role = "No role",
    required this.isAlive,
    this.enterprise,
  });

  comicCharacters.fromJson(Map<String, dynamic> data)
    : name = data['name'] ?? 'Unkwon',
      alias = data['alias'],
      power = data['power'] ?? 'No powers',
      role = data['role'] ?? 'No role',
      isAlive = data['isAlive'] ?? true,
      enterprise = data['enterprise'] ?? 'Unkwon';

  @override
  String toString() {
    return """
    ${alias != null ? 'Alias: ' + alias!.toUpperCase() : ''}
    Name: ${name.toUpperCase()}
    Power: ${power.toUpperCase()}
    Role: ${role.toUpperCase()}
    Is Alive: ${isAlive ? 'Yes' : 'No'}
    Enterprise: ${enterprise?.toUpperCase()}
    """;
  }
}
