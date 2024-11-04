//Generics = tipos genericos  = tipos parametrizados

/*
* Supongamos que tenemos que darle a una clase varios tipos de datos para que se pueda inicializar
* Es necesario decirle a la calse que se puede instancias con varios tipos de datos*/

///De otra manera tendrías que hacer una clase para que acepte cada tipo de dato
///Los generics nos permiten no preocuparnos

void main(){

  var storage = Storage("Bebe");//<-- aqui, a pesar de que es un tipo de dato genérico, al inicializarlo en string
                                //ya no puede recibir de otros tipos por eemplo string
  //storage.valor = 2;// <-- marcará error
  storage.printType();
  var myInt = getValue<int>();
  var myString = getValue<String>();
  int result1 = getValueGeneric<String>("Hello");
  int result2 = getValueGeneric<int>(123);
  cancelTutorial<int>(34);


}

//E, T, S, K,V
//element, type, key, value

class Storage <T>{

  T? valor;
  Storage(this.valor);

  void printType(){

    print("El tipo de dato es: $this.valor");
  }

}


//Tambien se pueden usar metodos de tipo generico

//En este caso trabaja y devuelve un generico
V getValue<V>(){

  V? valor;

  return valor as V;
}

//Aqui solo recibe un genérico y regresa un int

int getValueGeneric<V>(V input) {
  // Lógica para manejar el parámetro genérico `input`
  // Aquí simplemente devolvemos un entero, por ejemplo, el valor 2
  return 2;
}
//No regresa nada pero trabaja con Generics
void cancelTutorial<E>(E user){

  print(user);
}
//Podemos restringir los tipos de datos

class phone<E extends num>{///<-- solo se puede usar int o double que son hijos de num

}