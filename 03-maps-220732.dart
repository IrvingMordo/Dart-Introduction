void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Lucario',
    'hp': 120,
    'isAlive': true,
    'abilities': {"1": "Punch", "2": "Counterattack", "3": "Ice Punch"},
    'sprites': <String>['img1.png', 'img2.png', 'img3.png'],
    'winRate': null,
  };

  print(pokemon);
  print(" ");
  // print(pokemon['name']); //* we access the value stored in the key 'name'

  pokemon['hp'] > 0 ? true : false;

  //* Accessing individual properties of the Map
  // Build abilities string with indexes
  String abilities = '';
  (pokemon['abilities'] as Map).forEach((key, value) {
    abilities += '\n    $key: $value';
  });

  // Build sprites string with indexes
  String sprites = '';
  List spriteList = pokemon['sprites'] as List;
  for (int i = 0; i < spriteList.length; i++) {
    sprites += '\n    ${i + 1}: ${spriteList[i]}';
  }

  print("""
  Name: ${pokemon['name']}                           data type: ${pokemon['name'].runtimeType}                  
  HP: ${pokemon['hp']}                               data type: ${pokemon['hp'].runtimeType}
  Is Alive: ${pokemon['isAlive'] ? 'Yes' : 'No'}               data type: ${pokemon['isAlive'].runtimeType}
  Abilities:                    data type: ${pokemon['abilities'].runtimeType}
  $abilities
  Sprites:                      data type: ${pokemon['sprites'].runtimeType}
  $sprites 
""");
}
