void main() {
  //como instanciamos clases
  var book = Book("Hábitos atomicos", "James Clear", 12);
  var blank = Book.blankBook(); //<-- objeto inicicalizado
  List<String> authors = ["Julio", "Jesus"];
  var multipleAuthors = Book.multipleAuthors(12, "48 leyes del poder", authors);

  print(multipleAuthors.author);
  print("El metodo de full title");

  print(book.fullTitle());

  book.saiIndex();
  book.sayAuthors(uper: false);
  var book2 = Book("48 leyes del poder", "Robert Green", 56);

  //Gracias al operdor definido, daart ya sabe a que se refier cuando le decimos que sume con +
  var bookSum = book + book2;

  print((bookSum as Book).fullTitle());

  //Instanciamos la clase de Shelf

  var shelfOfB = FictionShelf();
  var number = shelfOfB.numberOfBooks();
  shelfOfB.sortBooks();
}

//Clase libro
class Book {
  //Atributos
  int id = 0;
  String? title;
  String? author;

  //Constructor Tradicional
  /* Book(String title, String author){

    this.title = title;
    this.author = author;
  }*/
  //Constructor syntatic sugar

  Book(this.title, this.author, this.id);

  //named constructor = constructores con nombres

  Book.blankBook()
      : title = "",
        author = "",
        id =
            -1; //<-- Este construtor cuando sea llamado, las varaibles seran inciada copn esos valores
  Book.multipleAuthors(int id, String title, List<String> authors)
      : this.id = id,
        this.title = title,
        author = authors.join("-");

  /*
  * En la instruccion : author = authors.join() del constructor
  *
  * estamos uniendo la lista en un solo String y de parametro le damos un separador
  *
  * siendo que si teniamos [juan, jesus,hernandez], quedaria en un solo String asi:
  *
  * author = "juan-jesus-hernandez"
  * */

  //TODO : FACTORIES CONSTRUCTORS
  static final Map<int, Book> cacheBooks = <int, Book>{};

//Keyword factory

  factory Book.fromJSON(Map<String, String> json) {
    if (json.containsKey("author") && json.containsKey("title")) {
      return Book(json["author"] as String, json["title"] as String, 23);
    } else {
      return Book.blankBook();
    }
  }

//Otra forma de usar factories es usar cache

  factory Book.fromCache(int id) {
    return cacheBooks[id] ??
        Book.blankBook(); //<-- SI ES NULL REGRESA UN LIBRO BLANCO
  }

  //TODO: METODOS

  //Regresa un string
  String fullTitle() {
    //con el signo de exclamacion decimos a Dart que confie en nosotros y que regresará nunca null

    return title! + " - " + author!;
  }

  //Metodo de tipo void

  void saiIndex() {
    print(this.id);
  }

  void sayAuthors({bool uper = false}) {
    if (uper == false) {
      print("Author ${this.author?.toUpperCase()}");
    } else {
      //Puede ser nula author por lo que ponemos signo de iterrogacion
      //de otra forma nos marca error
      print(this.author?.toUpperCase());
    }
  }

  //TODO: Operators

  /*Caracteriztica de dart que sirve para que el lenguaje reconozca operaciones
  * basicas de +,*,-,/ pero con objetos de ciertas clases*/

  operator +(Book other) {
    return Book(this.title! + "/" + other.title!,
        this.author! + "/" + other.author!, 133);
  }
}

//TODO: CLASES ABSTRCTAS

/*Son clases que sepran funciones
* que deben ser implementados por los hijos a menos
* que explicitamente sea indicado lo contrario*/
abstract class Shelf {
  void
      sortBooks(); //<-- la funcion la define las clases hijas pero nosotros obligamos a usarlas
  //para eso no agregamos las  {} para decir que es obligatoria

  //metodo no abstratcto

  int numberOfBooks() {
    //Todo: cuenta libros
    return 23;
  }
}

class FictionShelf extends Shelf {
  @override
  void sortBooks() {
    // TODO: implement sortBooks
  }
}

class ChildrenShelf extends Shelf {
  @override
  void sortBooks() {
    //TODO: implementa este mnetodo de otra forma pero que por contrato respeta
  }

  @override
  int numberOfBooks() {

    //implementando el no abstracto del metodo de la clase abstracta
    //return super.numberOfBooks();
    //implementado el metodo de esta clase


    return 20;
  }
}

//En las clases abstractas tambien puede haber metodos que no sean abstractos
