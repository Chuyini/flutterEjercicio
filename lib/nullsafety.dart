void main() {
  // Object? puede contener cualquier tipo de dato, incluyendo null
  Object? name; // La clase base de todas las clases en Dart
  Object? score; // Puede ser de cualquier tipo, incluyendo String o bool
  Null nulo = null; // Puede contener un valor null

  // type promotion = promoción de tipo

  /// es posible la promocion debido a esta superposcion:

  ///int? variableSuperpuesta = int | null;
  ///
  // Prometemos que una variable nunca será null después de ciertos chequeos

  int? number; // Inicializa con null
  late String description;
  description = "Este es un libro"; // Inicialización antes del uso
  print(description);
}

class Book {
  int price = 23;

  // Promoción de variable

  int pricePromotion([int? discount]) {
    if (discount != null) {
      return this.price - discount; // Asegura que discount no es null
    } else {
      return 23;
    }
  }
}

void checkPromotion(int? number) {
  if (number != null) {
    // `number` es promovido a non-nullable dentro de este bloque
    print(number.isEven);
  }
}

/*
* Operador !: Úsalo con cuidado porque si la variable resulta ser null, lanzará una excepción.

Operador ?: Útil para indicar que una variable puede ser null, lo que es crucial para null safety en Dart.*/

/// En resumen:
/// con el signo ! dices que confíe en que la variable no va a ser null
/// con el signo ? dices que la variable puede ser null
/// con late le dices que confíe en que la llenaras después
