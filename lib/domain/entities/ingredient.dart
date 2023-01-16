import 'package:food_otus/data/models/db/ingredient_db.dart';

import 'measure_unit.dart';

class Ingredient {
  final String? name;
  final MeasureUnit unit;
  final int? count;

  Ingredient({
    required this.name,
    required this.unit,
    required this.count,
  });

  factory Ingredient.fromDB(IngredientDB data) =>
      Ingredient(
        name: data.name,
        unit: MeasureUnit.fromDB(data.measureUnit),
        count: data.count,
      );

  String getCount() {
    if (count == 0) return unit.one;
    if (count == 1) return "$count ${unit.one}";
    if (count! < 5) return "$count ${unit.few}";
    return "$count ${unit.many}";
  }

  /*String getCount() {
    var whole = count.truncate();
    var fractional = count - whole;
    var countResult = "$whole";
    if (fractional > 0) {
      var fraction = _getFraction(fractional);
      countResult += " ${fraction.numerator}⁄${fraction.denominator}";
    }

    if (whole == 1) {
      countResult += " ${unit.one}";
    } else {
      countResult += " ${unit.few}";
    }
    return countResult;
  }

  Fraction _getFraction(double value) {
    final abs = value.abs();
    final mul = (value >= 0) ? 1 : -1;
    final x = abs;

    const limit = 1.0e-12;
    var h1 = 1;
    var h2 = 0;
    var k1 = 0;
    var k2 = 1;
    var y = abs;

    do {
      final a = y.floor();
      var aux = h1;
      h1 = a * h1 + h2;
      h2 = aux;
      aux = k1;
      k1 = a * k1 + k2;
      k2 = aux;
      y = 1 / (y - a);
    } while ((x - h1 / k1).abs() > x * limit);

    return Fraction(mul * h1, k1);
  }*/
}

class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, this.denominator);
}
