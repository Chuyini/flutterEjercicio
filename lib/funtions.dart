void main(List<String> args) {
  var allow = isAllowToEnter(12);
  //Llamada a las funciones
  sendMessageNamedP(
      "Hola a todos", 12); //<-- llamada a la funcion sin named parameter
  sendMessageNamedP("Porfavor reunirse a la reunion", 13,
      urgent: true); //<--Hacemos uso del named parameter
  sendMessageNamedP("Gracias!", 22,
      sound: true,
      urgent:
          true); //<--hacemos uso del named parameter, no importa el orden y opcionales en la llamada

  //variables que apuntan a una funcion

  var someFunction = sendMessageNamedP;

  someFunction.call("Llamanda con la variable", 12);
  auth("user", "123", sendMessageNamedP);

  //Funciones anonimas

  var list = ['naranja', 'rojo', 'verde'];
  list.forEach((color) {
    print(color);
  });

  /*
  * Entonces por cada elemento o variable donde se asigna cada elemnto de la lista
  * tomar el valor e imprimirlo
  * */

  //Ahora haremos lo mismo pero esta vez vamos a declarar una funcion anonima en una variable

  var printElement = (element) {
    print(element);
  };

  print("******Variable anonima y lista*******");

  list.forEach(printElement);

  /*Como dato importante

  el main tambien recibe argumentos y para darselos
  en linea de consola es de la siguiente manera


  * */

  print("Imprimimos la lista de argumentos del MAIN");
  print("Argumento: ${args}");
}

//Pero tambien es posible mandar funciones como argumento

void auth(String user, String password, Function(String, int) afterAction) {
  //<-- Funcion que como parametro tiene una function con parametros

  if (user == "Julio") {
    //si la funcion no viene explicitamente que tiene que tener ciertos parámetros
    //hubiera marcado una excepcion y no sabrias de donde viene o sería más dificil
    //identificar
    afterAction.call(user, 89);
  }
}

//funcion explicita
bool isAllowToEnter(num age) {
  return age >= 18;
}

//Función implicita
isAllowToEnterIm(num age) {
  return age >= 18;
}

//Lo recomendabel es hacer la funcion explicita

void sendMessage(String mesage) {
  //mandamos mensaje
}

//CONCEPTO DE "named parameters"

//Párametros con nombres, opcionales

/*
* Cononcidos como named parameters y son  opcionales los parametros suminitrados en las llaves
* se pueden propocionar en cualquier ordend el valor de las mismas
* Ademas de que se pueden inicializar los parametros por defectos como el ejemplo de
* bool sound = false
* o con solo ponerle ? no es necesario para decir que puede ser nula
*  */
void sendMessageNamedP(String message, int channelId,
    {bool? urgent, bool sound = false}) {
  print(message);
  print(urgent);
  print(sound);
  print("Canal: ${channelId}");
}
