//Iterables es una coleccion al se puede acceder a sus elementos de manera secuencial

void main(){

  List<String> names = ["Jesus", "Julio", "Manuel"];
  Set<int> scores = {1,34,23};

  //Es mas fácil recorrer un for cuando tenemos un iterable

  for(var name in names){

    print(name);

  }

  print(names.last);
  print(names.first);

  var filteredScores = scores.where((score)=>score>24);//Se puede filtrar, en este caso usamos el metodo where y la condicion para cada score >24

  //Iteramos sobre lo filtrado
  for(var score in filteredScores){
    print(score);
  }

  //Metodo de fisrsWhere, trae el primer elemento que cumppla con la condicion

  var firsResult;
try{
   firsResult = scores.firstWhere((element)=>element<0);//<-- si no cumple la condicion tirara un  error que debemos manejar con un tru carch
}catch(e){
    print("No se pudo ");
    firsResult =0;
};

///tambien existe lastwhere

  //tambien podemos usar el orELSE

  firsResult = scores.firstWhere((element)=>element<0, orElse: ()=>-2);//<-- si no cumple la condicion tirara un  error el or else regresara ese valor

  var res = names.any((element)=>element.contains("j")); //regresa verdadero o falso si se encontró
  
  var allEquals = names.every((element)=>element.length>4);//todos lo elementos es 4 ?
    
  print("El primer elemento < 10 es : $firsResult");

  //Todo: Metodo MAP

  //Aplica una funcion a cada uno de los elementos regresando una lista modificada
  //proviene de la programacion funcional

  var newScore = scores.map((element)=>element*9);

  print(newScore);

  var uperNames = names.map((element)=>element.toUpperCase());//hacerlos mayusculas a todos
  print(uperNames);

  ///APLICAR A CIERTOS ELEMENTOS

  ///var scores = [5, 10, 15, 20];
  /// var newScores = scores.map((element) {
  ///  if (element > 10) {
  ///     return element * 9;
  ///   }
  ///   return element; // No modifica el elemento si no cumple la condición
  /// }).toList();
  // /
  /// print(newScores); // [5, 10, 135, 180]


}