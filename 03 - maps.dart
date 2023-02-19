void main(){
  
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  
  print(pokemon);
  print('Name ${pokemon['name']}');
  print('Name ${pokemon['sprites']}');
  
  /**
   * final Map<String, dynamic> pokemon
   * si no estuviera especificado el Map<String, dynamic>
   * no podría imprimir: pokemon['sprites'][2]
   * porque sprites, siendo un indice dinamico podría ser nulo
   *
   **/
  print('Back: ${ pokemon['sprites'][2] }');
  print('Front: ${ pokemon['sprites'][1] }');
}