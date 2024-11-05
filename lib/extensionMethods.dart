/*
 * Los extension methods sirven para cuando quieres agregar métodos útiles a clases
 * de terceros a las cuales no tenemos acceso.
 * Esto es especialmente útil para agregar funcionalidades adicionales sin modificar
 * el código original de la clase.
 */
void main() {
  var book = Book();
  book.summary = "This book talks about my life";
  print(book.translateToSpanish(
      book.summary)); // Utilizamos el método de extensión para Book

  String text = "Texto cualquiera";
  print(text
      .translateToSpanish()); // Utilizamos el método de extensión para String
}

// Uso de la extensión en la clase Book
extension BookExtension on Book {
  // Estamos dentro de la clase Book a pesar de no ser nuestra
  // Podemos usar sus propiedades, métodos y agregar más de estos
  String translateToSpanish(String text) {
    return "Traducido a español";
  }
}

// Inclusión de extensión para la clase String
extension SpanishTranslation on String {
  String translateToSpanish() {
    return "Traducido a español";
  }
}

class Book {
  String summary = "";
  late int nroPage;
}

// Podemos agregar nombres para poder ser importadas en entre archivos
// Ejemplo: import 'extensionMethods.dart';
// Con esto podemos importarlas e incluso podríamos restringirlas
// Ejemplo: import 'extensionMethods.dart' hide SpanishTranslation;

/*
Puntos Clave a Incluir
Scope de las Extensiones: Las extensiones solo afectan al archivo donde se importan, lo que evita conflictos en otros contextos.

Extensiones en Diferentes Tipos: Puedes crear extensiones para cualquier tipo, incluyendo tipos primitivos y tus propias clases.

Uso Responsable: Aunque las extensiones son poderosas, úsalas con responsabilidad para no confundir a otros desarrolladores que lean tu código.
* */
