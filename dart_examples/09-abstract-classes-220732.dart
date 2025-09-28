void main() {
  final queretaroWindPlant = WindPlant(initialEnergy: 1000000);
  final lagunaVerdeNuclearPlant = NuclearPlant(energyLeft: 1000000);
  final necaxaHydroelectricPlant = HydroelectricPlant(initialEnergy: 500000);

  print("""
    List of Power Plants in Mexico
    -----------------------------------------
    Queretaro Wind Power Plant
    Available Energy: ${queretaroWindPlant.energyLeft}

    Laguna Verde Nuclear Power Plant
    Available Energy: ${lagunaVerdeNuclearPlant.energyLeft}

    Necaxa Hydroelectric Plant
    Available Energy: ${necaxaHydroelectricPlant.energyLeft}
  """);

  print("""
    Consumption History of: 09/24/2025
    -----------------------------------------

    Consumption Request 1:
    Requester: Hidalgo General Hospital
    Requested Amount (KWts): 75326
    Supplier: Queretaro Wind Power Plant
    Available Energy: ${queretaroWindPlant.energyLeft}
  """);

  queretaroWindPlant.consumeEnergy(75326);

  print("""
    Consumption successfully completed
    Remaining energy in Queretaro Wind Power Plant: ${queretaroWindPlant.energyLeft}

    Consumption Request 2:
    Requester: Benito Juarez International Airport
    Requested Amount (KWts): 3250000.76
    Supplier: Laguna Verde Nuclear Power Plant
    Available Energy: ${lagunaVerdeNuclearPlant.energyLeft}
  """);

  lagunaVerdeNuclearPlant.consumeEnergy(3250000.76);

  print("""
    Consumption successfully completed
    Remaining energy in Laguna Verde Nuclear Plant: ${lagunaVerdeNuclearPlant.energyLeft}

    Consumption Request 3:
    Requester: Santa Fe Shopping Mall
    Requested Amount (KWts): 125000
    Supplier: Necaxa Hydroelectric Plant
    Available Energy: ${necaxaHydroelectricPlant.energyLeft}
  """);

  necaxaHydroelectricPlant.consumeEnergy(125000);
  
  print("""
    Consumption successfully completed (+ 1.5% extra for facility usage)
    Remaining energy in Necaxa Hydroelectric Plant: ${necaxaHydroelectricPlant.energyLeft}
  """);
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * .5);
  }
}

class HydroelectricPlant extends EnergyPlant {
  HydroelectricPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.water);

  @override
  void consumeEnergy(double amount) {
    final extraCost = amount * 0.015;
    final totalConsumption = amount + extraCost;
    energyLeft -= totalConsumption;
  }
}
