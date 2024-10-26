
void main() {
 //Dart es un lenguaje lanzado en 2001, fue creado por google
  //Everty es un objeto y evertyhing objeto es una instancia de una clase
  //Es un lenguaje fuertemente tipeado (strongly typed)

  int edad = 32;

  //Dart tiene inferencia de tipps

  var puntos = 32;

  //Dart 2.12
  //Sound null safety. Variable no puede ser null, a menos que explicitamente
  //le digas

  int? score = null;

  //sound null safety = confiblemente null safety
  //Soporta compilacion JIT(Just-in-timee) y AOT (ahead-of-time)
  //a medida que se va ejecutando el programa se va ejecutando
  //ahead significa qu ees compilado el programa y codigo compilado es ejecutado


  /*Las cvariables hacen referencias a objetos*/

  var name = "Jesus";
  String nameStr = "Jesus";

  //si no sabes el tipo de dato de una variable

  Object algo = "algo";

  algo = 2;
  //Dinamic quiere decir que ese tipo de dato puede cambiar en tiempo de ejecución
  dynamic algo2  = "abc";//<-- mas clara que usar object

  //nulleable --> puede contener un null

  int score1 ; //<-- aqui estamos diciendo que la variable puede ser null

  //por defecto se te marcará error cuando una variable sea null, de eso trata
  // el null safety

  //siempre que sea seguro que la variable sin inicializar como nullsafett: "int score1;"
  //se defina más adelante y se tenga esa garantía, no maracará error



  //late --> algo que pasa mas adelante

  //aqui deciimos que la incializaremoios después
  late int score2;
  score2 = 2;

  //final es una variable que significa que solo se va a setear una vez
  final int algo23 = 23;
  final year = 2021;
  //year=23;//<-- solo se puede usar una vez por eso marca errror
  //const son varoiables seteadas en tiempo de compilacion
  const month = "febreor"; //como grabar algo en piedra
  //solo puede ser seteado una vez la variable

  //diferencia con final, es que puede no conocerse cuando se define la variable con
  //este tipo pero puede concerse en tiempo de ejecucion

  //const por otro lado en el mismo momento que se define

  //final --> tiempo de ejecucion
  //const --> tiempo de compilacion

  /*Tipos de datos
  *
  * int
  * double
  * num
  * var
  * Strings
  *Bool
  * */

  //
  int numero = 2;
  double price  = 23.4;

  num valor = 100;
  num puntaje = 12.2;

  int precio =23;
  int cantidad = 2;

  String message = "Ingresa tu edad :";
  //interpolacion, usar variables en los strings
  String ageMesagge = 'Tu edad es: $edad';
  //Usar brackets para usar mas de una variable
  String totalPrice = "El precio total es ${precio*cantidad}";
  //concatenacin de strings

  String concatenado = ageMesagge + " " +message;


  var isAdmin = true;
  var isUser = false;
  bool isTrue = false;

  if(isAdmin){

  }

  //Lista implicita de numeros

  var numbers = [1,2,3,4]; //infiere que es una lista de int

  //Listas explícita de tipos de datos
  List<int> numeros = [23,23,12,233];
  List<String> nombres = ["Jesus","Saulo","Ruben"];
  //lista explicita de objetos

  List<Object> nums = [12, 23];

  //metodos a propiedades de la lista

    //anchura
  var largo = nums.length;
  nums.add(9898);
  nums.remove(12);//<-- remover el objeto si existe
  nums.removeAt(0);//<-- remover del incide
  nums.isEmpty;//si es que la lista esta vacia
  nums.isNotEmpty;//Si es que la lista no esta vacía

  //Propagar la lista en otra list

  var list3 = [1,2,3];
  //spread
  var list4 = [0,...list3];

  //tambien sive por ejemplo si una lista tiene null
  var list5;
  var list6= [0,...?list5];//<-- marcará un exception pero con ? decimos que nome nul como 0

 //tambien se puede hacer proceso logicas dentro de la creaciíon de la lista


 var menu = [ //creacion de lista con funciones

   'menu1',
   'menu2',
   if(edad >18) 'menu3 para mayores'

 ];
//uso for en la creacion de la lista
 var menu2 = [

   for(var i in list4) 'menu$i'

 ];

 //Sets --> para listas con valores unicos implicito

  var dias = {"Lunes", "Martes", "Miercoles"}; //--> no puede tener otro lunes por ejemplo

  //explicito

  Set<String> meses ={"Enero", "Febrero"};

  //Tipo mapas que son muy párecidos a los objetos json

  //cunado es explicito deber tener los dos tipos de datos

  //Expliciito implicito
  var scores = {"joe":22, "lola":12};

  //explicito explicito
  Map<String,int> scors = {
    'jorge':23,
    'Samuel':22,
    'Sebastian': 23
  };




  print(scors['jorge']); //acceder al valor







  var bar = month;


  if(isNewPlayer()){

    score1 = 1231;

  }else{

    score1 = getScoreFromAnyWhere();
  }


  print(score1);



}


bool isNewPlayer(){

  return true;
}


int getScoreFromAnyWhere(){

  return 1000;
}