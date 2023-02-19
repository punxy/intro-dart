void main() async {
  
  print('inicio del programa');
  
  try {
    final value = await httpGet('http://...');
    print(value);
    
  } catch (err) {
    print('Oops!! $err');
  }
  
  
  
  print('fin del programa');
}

Future<String> httpGet( String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error en la petición';
    
  return 'Resultado petición http';
}