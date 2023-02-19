void main() {
  // var myName = 'Sebastián Silva';
  
  // la contante se crea al momento de construcción
  // const myName = 'Seba Silva';
  
  String myName = 'Seba';
  
  // final se crea en el momento de ejecución
  //final myName = 'Seba'; // no permite cambiar su valor
  
  myName = 'Sebastián Silva';
  
  print('Hola $myName');
  print('Hola ${ 1 + 1 }');
  print('Hola ${ myName.toUpperCase()  }');
}
