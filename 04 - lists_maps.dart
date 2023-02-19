void main(){
  
  final numbers = [1,2,3,4,5,6,7,8,5,6];
  
  print('List original $numbers');
  print('List original ${numbers.length}');
  
  // obtengo el primer valor
  print('List original ${numbers[0]}');
  print('List original first ${numbers.first}');
  print('List original last ${numbers.last}');
  print('List original reversed ${numbers.reversed}');
  
  // reversed devuelve un Iterable ()
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); // acá no tenemos valores duplicados
  
  final numGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  
  print('> 5 Iterable $numGreaterThan5');
  print('> 5 Set ${numGreaterThan5.toSet()}');
}