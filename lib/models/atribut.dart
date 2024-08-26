// atribut item
class Atribut {
  final String name; // topi
  final String description; // topi wisuda
  final String image; // lib/images/topi.jpg
  final AtributCategory category; // FTIK
  List<Ukuran> availableUkuran; // [ Extra Large ]

  Atribut({
    required this.name,
    required this.description,
    required this.image,
    required this.category,
    required this.availableUkuran,
  });
}

// atribut category
enum AtributCategory {
  Topi,
  Jubah,
  Stola,
  Medali,
}

// atribut Ukuran
class Ukuran {
  String name;
  double price;

  Ukuran({
    required this.name,
    required this.price,
  });
}
