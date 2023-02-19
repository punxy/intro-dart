void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind: ${windPlant.energyLeft}');
  print('Nuclear: ${nuclearPlant.energyLeft}');

  final wind_charguer = chargePhone(windPlant);
  final nuclear_charguer = chargePhone(nuclearPlant);

  print(wind_charguer);
  print(nuclear_charguer);
}

double chargePhone(EnergyPlant energyPlant) {
  if (energyPlant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return energyPlant.energyLeft - 10;
}

enum Planttype { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final Planttype type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(
          energyLeft: initialEnergy,
          type: Planttype.wind,
        );

  @override
  void consumeEnergy(double amount) {
    print(amount);
  }

  @override
  String toString() {
    return 'Holi, Soy una planta de viento';
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final Planttype type = Planttype.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    print(amount);
  }

  @override
  String toString() {
    return 'Holi, Soy una planta nuclear';
  }
}
