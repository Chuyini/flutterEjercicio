void main(){

  var age= 15;

  if(age <18){

    print("No entrar");
  }else{
    print("No entra");
  }


  for(var i=0;i<2;i++){

    print(i);
  }

  //for iterable

  List<int> ids = [23,34,12,1,3];

  for(var id in ids){
    print("Id : ${id}");
  }

  //while
var counter = 10;
  while(counter > 0 ){

    print("counter: ${counter}");
    counter--;

  }

  //do while <-- ejecuta antes de evaluar la condicion

  int flag = 1;
  do{

    print(flag);

  }while(flag == 2);

  /*continuey break
  *
  * Break <-- rompe el ciclo en el que se encuentra
  * continue <-- salta una iteracion pero el bucle sigue
   */

  //switch-case
  //

  var op =2;
  switch(op){
    case 1:
      break;
    case 2:
      break ;
  }

  var status = "ok";

  switch(status){
    case "Down":
      break;
    case "OFF":
      break;
    case "ERROR":
      Exception("Ocurrio un error");
      break;
    case "Waiting": //cascada
    case "Loading":
      break;
    default: Exception ("Hay un error");
      break;
  }


  //





}