void main() {
  var weatherForecast = Weathers.cloudy;

  print(weatherForecast);

  var flower = Flowers.raflesia;

  switch (flower) {
    case Flowers.raflesia:
      print('Flower is Raflesia');
      break;
    case Flowers.anggrek:
      print('Flower is Anggrek');
    default:
  }
}

enum Flowers { raflesia, anggrek }

enum Weathers {
  sunny(19),
  cloudy(90),
  rain(99),
  storm(73);

  final int rainAmount;

  const Weathers(this.rainAmount);

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}
