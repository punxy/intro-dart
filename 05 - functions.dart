void main (){
  print( greetEveryone() );
  print( 'Suma: ${addTwoNumbers(10, 25)}');
  print( 'Suma: ${addTwoNumbersOptional(10)}');

  print( greetPerson(name: 'Seba') );
  print( greetPerson(name: 'Seba', message: 'Holi') );
}

// función de flecha, no puede haber un cuerpo, se debe retornar inmediatamente
String greetEveryone() => 'Hello Everyone';

int addTwoNumbers( int a, int b ) => a + b;

int addTwoNumbersOptional( int a, [int b = 0] ){
  
  // preguntamos si es null, si es así, le asignamos un valor de cero
  // b = b ?? 0;
  // b ??= 0;
  
  return a + b;
}

// funciones con nombres de parámetros
String greetPerson( { required String name, String message = 'Hola' } ) {
  return '$message, $name';
}