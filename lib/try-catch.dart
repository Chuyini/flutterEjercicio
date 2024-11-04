/*
* Diferencia entre exception y un error
*
* Exception son errores que no puede controlar el usuario
* Los errores son valga la redundancia errores no esperados y son para el usuario
*
* */

/*
* Si la función loginUser lanza un tipo de excepción diferente a
* InvalidUserException, esa excepción no será capturada por el bloque catch
* especificado. En cambio, se propagará hacia arriba en la pila de llamadas
* hasta que encuentre un bloque try-catch que pueda manejarla, o hasta que cause
* que el programa termine con un error no capturado.
* */
import 'dart:io';

import 'package:udem/enums.dart';

void main() {
  var index = -1;
  var path = "";
  //try catch tradicional
  try {
    var name = "Jesus";
    name.substring(index);
  } catch (exception) {
    print("Error de impresion");
  }

  /*
  * Suppongamos que hacemos una peticion para dercargar una imagen
  * Puede ocurrir una excepcion por no haber internet
  *
  * Existen excepciones específicas para ese tipo de situaciones
  * */

  //Especificamos la excepcion

  var url = "";

  try {
    downloadFile(url);
  } on SocketException catch (exception) {
    ///<-- para atrapar especificar la excepecion ponemos on seguido de l excepcion y la atrapamos en el catch
    print("Esta excepcion es porque no hay internet, conectate ");
  } on IOException catch (Exception) {
    print("Ocurrio un error al guardar el archivo");
    log(Exception);
  } on Exception catch (Exception, stacktrace) {
    ///<-- Cuando ya no sabemos que tipo de error es
    ///                                             Es un tipo de error general
    ///                                             Stack trace es el camino que recorrio el código
    ///                                             La excepcion puede recibir estos dos parametros

    log(Exception, stack: stacktrace);
  } finally {
    /// <-- este finaly asegura que ejcutara al fianal de todos los catch o lop quesa
    ///           por ejemplo limpiar el cache

    cleanCache(path);
  }

  var userId = "Julio";

  try {
    loginUser(userId);
  } on InvalidUserException catch (e) {
    print(e.cause);
  }
}

bool downloadFile(var url) {
  return true;
}

void log(Exception e, {StackTrace? stack}) {
  print("Mandar al servidor");
}

void cleanCache(var url) {}

//TODO: Crear Excepciones

class InvalidUserException implements Exception {
  String? cause;

  InvalidUserException(this.cause);
}

void loginUser(var userId) {
  //hace algo
  //falla y mandamos
  throw InvalidUserException("El usuario está bloqueado");
}
