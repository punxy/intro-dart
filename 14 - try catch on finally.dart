void main() async {
  
  print('inicio del programa');
  
  try {
    final value = await httpGet('http://...');
    print('Exito!! $value');
    

  } on Exception catch (err){ //* capturamos según el tipo de error
    print('Oops!! Tenemos una excepción! $err');
    
  } catch (err) {
    print('Oops!! $err');
  
  } finally {
    print('fin del try y catch');
  }
  
  
  
  print('fin del programa');
}

Future<String> httpGet( String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
    
  return 'Resultado petición http';
}