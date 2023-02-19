void main(){
 
  // simulamos una petición a una API
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  
  final ironman = Hero(
    name: 'IRON MAN',
    power: 'invisibilidad',
    isAlive: true
  );
  
  print( ironman.toString() );
  
  
  final ironman2 = Hero.fromJson(rawJson);
  
  print( ironman2.toString() );
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name'] ?? 'no name found',
    power = json['power'] ?? 'no power found',
    isAlive = json['isAlive'] ?? 'no isAlive found';
  
  @override
  String toString(){
    return 'Hero: name: $name - power: $power - isLive: ${isAlive ? 'YES' : 'No'}';
  }
}