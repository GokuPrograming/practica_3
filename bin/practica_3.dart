void main(List<String> arguments) {
  var paises = <String, dynamic>{
    "America": ["Mexico", "Brasil", "Argentina"],
    "Europa": ["Alemania", "Italia", "Francia"],
    "Asia": ["Japon", "Indua", "China"]
  };

  print("paises del mundo");

  // recorrer los mapas
  for (var paisesContinente1 in paises.entries) {
    // se define como una lista
    List paisesContinente = paisesContinente1.value;
    String cadena = "";
    int contador = 1;
    print(paisesContinente1.key);

    // este recorrera la lista, el anterior recorre el mapa
    for (String pais in paisesContinente) {
      if (contador < paisesContinente.length) {
        cadena = cadena + pais + "-";
      } else {
        cadena = cadena + pais;
      }
      contador++; // Corrección aquí
    }

    print(cadena + "\n");
  }
////
  print("paises del mundo");

  // recorrer los mapas
  for (var paisesContinente1 in paises.entries) {
    // se define como una lista
    List paisesContinente = paisesContinente1.value;
    paisesContinente
        .removeWhere((element) => element.toString().startsWith('I'));
    String cadena = "";
    int contador = 1;
    print(paisesContinente1.key);

    // este recorrera la lista, el anterior recorre el mapa
    for (String pais in paisesContinente) {
      if (contador < paisesContinente.length) {
        cadena = cadena + pais + "-";
      } else {
        cadena = cadena + pais;
      }
      contador++; // Corrección aquí
    }

    print(cadena + "\n");
  }
  // todos los paises
  print(paises);
  print(paises["America"]);
}
