void main(){
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  
  // con <String> le indicamos el tipo de variable
  // final abilities = <String>['impostor']; // es una lista
  // final List<String> abilities = ['impostor']; // es una lista
  final abilities = ['impostor']; // si no trae el tipo, dart lo infiere
  
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  // le indicamos que podría ser nulo
  // bool? isAlive = true;

    // el tipo dynamic siempre puede o no, ser nulo -> dynamic? no es necesario
  dynamic errorMessage = 'Hola';
  
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = {1,2,3};
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  Name: $pokemon
  HP: $hp
  Alive: $isAlive
  Abilities: $abilities
  Sprites: $sprites
  
  """);
  
}