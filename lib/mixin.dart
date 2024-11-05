/*
*MIXIN
*
* Forma de usar codigo de una clase en multiples jerarquias de clases
*
* */

/*Supongan el siguiente caso de uso
*
* tenemmos libros que pueden ser vendidos y prestados
* pero los NoteBooks no pueden ser prestados solo vendidos
*
* NoteBOOKS no puede ser heredado de books porque hace estas dos acciones
* por ello hacer dos mixin para book y para note book es crucial
* mixin para notebok para solo vender y mixin para book para comprar y vender
* por supuesto que todos los que hereden de book tendran este mixin tambien
*Serian dos mixin entonces para book comprar t el de vender y para notebok solo
* comprar
*
* */

void main() {

  var childrenBook = ChildrenBook();
  childrenBook.lend();
  childrenBook.sell();
}
mixin ItemActions on Book{ //<-- restingimos el mixin para que solo los que
                                    //los que hereden de book puedan usar este mixin
                                    //Obligando a usar clase abstracta practicamente


  void lend(){
    print("prestar");
  }

}
mixin PermanentItemActions{

  void sell() {

    //Prestar

    print("vender");
  }

}

abstract class Book  { //<-- aqui estamos usandos dos mixin

  int pages = 0;
  String title = "";


}

class ChildrenBook extends Book with ItemActions, PermanentItemActions{

  int maxAge = 20;

}

class NoteBook with PermanentItemActions{

  int price = 100;

}