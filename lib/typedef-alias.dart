//Typedef = alias para tipos Dart => 2.13.0 para poder usar los yipedef

import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

typedef intList = List<int>;//<-- generamos un nuevo tipo
typedef ConfigurationMap = Map<int,List<Map<String,String>>>;//<-- ejemplo practico
typedef myFunction = bool Function(String a, int b);//<-- hicimos tipos para funciones

bool SomeBigFunction(String userId, int score){
  return true;
}
otherFunction(myFunction f, int x){
  f.call("",23);

}

void main(){

  intList lis = [2,3,4,6];
  List<int>? k;
  ConfigurationMap? appConfMap; //<-- aqui usamos le tipo de datos

  myFunction fun = SomeBigFunction;//SomeBigFunction: Función que coincide con la firma definida en typedef myFunction.

  /*
  * La clave aquí es que typedef myFunction define un tipo de
  * función que SomeBigFunction coincide perfectamente. Esto permite que fun
  * sea igual a SomeBigFunction, ya que ambas comparten la misma firma.*/

  var result = fun.call("julio",12);

  otherFunction(fun, 23);

}

