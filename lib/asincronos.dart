/*
* Programación asíncrona
* Permite que un programa continúe ejecutando otras tareas mientras espera que se complete una operación prolongada.
*/

/// Operación síncrona:
///   Bloquea otras operaciones hasta que se completa.
///
/// Función síncrona:
///   Función que solo ejecuta operaciones síncronas.
///
/// Operación asíncrona:
///   Una vez iniciada, permite que otras operaciones se completen antes de terminar.
///
/// Función asíncrona:
///   Función que al menos ejecuta una función asíncrona y las demás pueden ser síncronas.

// Palabras clave
// Future class: Clase que representa el resultado de una operación asíncrona.
// Puede tener dos estados: completa o incompleta.

/// Estados:
/// Incompleto: La operación aún no ha terminado.
/// Completo: La operación ha terminado.
void main() {
  print("Obteniendo datos ...");
  var username = getUserName(); // es un Future<String>

  /// Si no quisiéramos usar then, podemos usar la palabra clave await
  username.then((value) => print(value)); // le pasamos la función cuando se complete el estado
}

Future<String> getUserName() async { // como es una función asíncrona, no puedo regresar
  // como tal el tipo, se necesita un tipo especial
  return Future.delayed(Duration(seconds: 2), () => "jesus manuel"); // La función que se pasa por parámetro se realiza cuando termina el estado
  // return "Jesus Manuel";
}

void getUserData() {
  Future.delayed(Duration(seconds: 2), () => print("Realizando operación, espere..")); // La función que se pasa por parámetro se realiza cuando termina el estado
}

// Todo: Main con función asíncrona
/*
* void main() async {
*   var username = await getUserName(); // es un Future<String>
* }
*/

Future<String> readFile() async {
  return Future.value("Este es un archivo muy grande");
}

void printFileData() async {
  var msg = await readFile();
  print(msg);
}

/// En resumen:
/// Hay dos formas de llamar una función asíncrona:
/// 1.- Con await
/// 2.- Con then
///
/// Pero para la función que hace la operación asíncrona se debe poner Future<T>
///
/// Checar funciones de Future
///
/// Importante usar:
///
/// try {
//   var data = await getUserName();
//   print(data);
// } catch (e) {
//   print("Error: $e");
// }


///El Completer en Dart es una utilidad que te permite crear y manejar futuros
/// (Futures) de forma manual. Es especialmente útil cuando quieres tener
/// control explícito sobre cuándo y cómo se completa un futuro.
///void exampleCompleter() {
//   Completer<String> completer = Completer();
//
//   // Simulando una operación asíncrona
//   Future.delayed(Duration(seconds: 2), () {
//     completer.complete("Operación completada!");
//   });
//
//   completer.future.then((value) => print(value));
// }
