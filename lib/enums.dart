
enum LogicStatus {

  error,
  succes,
  userDoesntExist,
  retry,

}
void main(){
//Los enums o enumerators son un tipo especial que sirven para agrupar varias constantes
//que tienen una razon logica para estar agrupados


var result = loginUser("julio","password");

const succes = 1;
const error = 2;
const retry = 3;
const incorrectPassword = 4;
const userDontExist = 5;
  if(result == error)
    {

    }else{

    switch(result){
      case LogicStatus.error:
        // TODO: Handle this case.
      case LogicStatus.succes:
        // TODO: Handle this case.
      case LogicStatus.userDoesntExist:
        // TODO: Handle this case.
      case LogicStatus.retry:
        // TODO: Handle this case.
    }



    }

  //lISTA DE VALORES DEL ENUM
//lISTA ORDENADA
  List<LogicStatus> loginList = LogicStatus.values;
}


LogicStatus loginUser(String vari, String normal){

  //logica para inciar sesion

  return LogicStatus.error;
}
