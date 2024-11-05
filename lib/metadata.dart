//Metadata = annotations
//Son palabras que empiezan con @ ejemplo

//@override
//@Deprecated

void main() {

  var book = Book();
  book.numberOfPages();
  book.chaptersAndPages();

  // *Puedes acceder a annotation en tiempo de ejecución mediante "Reflection"

  // Comments
  /*
  Esto es un comentario
  muy grande
  necesito muchas lineas
   */
}

/// Book is a class that represents a book.
/// Don't use [numberOfPages], instead use [chaptersAndPages] <-- esta asi porque el @deprecated hace eso 
/// [nroPages] represents the number of pages.<-- hipervingulo
class Book {
  int nroPages = 0;

  @Deprecated("Use new method chaptersAndPages()")
  int numberOfPages () {
    // lógica entremedio
    return nroPages;
  }

  @VersionRestriction("3.5.0", "We need some new apis")
  List<int> chaptersAndPages() {
    // lógica para calcular capítulos y páginas
    return [123,12,40];
  }
}

// restricción de versión
class VersionRestriction {
  final String version;
  final String reason; //motivo

  const VersionRestriction(this.version, this.reason);

  String toString() => reason;
}