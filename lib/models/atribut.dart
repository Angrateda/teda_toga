// atribut item
class Atribut {
  final String name; // topi
  final String description; // topi wisuda
  final String image; // lib/images/topi.jpg
  final double price; // 20.000
  final AtributCategory category; // FTIK
  List<Ukuran> availableUkuran; // [ Extra Large ]

  Atribut({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.availableUkuran,
  });
}

// atribut category
enum AtributCategory {
  FTIK,
  FEkonomi,
  FTeknik,
  FPsikologi,
  FHukum,
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
