void main(){
  
  final Hero wolverine = Hero(
    name:'Seba'
  );
  
  print( wolverine.toString() );
  print( wolverine.name );
  print( wolverine.power );
}

class Hero {
  String name;
  String power;
  
  //Hero(this.name, this.power);
  
  // Hero(String name, String power)
  // : name = name,
  //  power = power;
  
  Hero({
    required this.name,
    this.power = 'Sin poder'
  });
  
  @override
  String toString(){
    return 'Hero: name:$name - power:$power';
  }
}