import 'package:teda_toga/models/atribut.dart';

class KeranjangItem {
  Atribut atribut;
  List<Ukuran> selectedUkuran;
  int quantity;

  KeranjangItem({
    required this.atribut,
    required this.selectedUkuran,
    this.quantity = 1,
  });

  double get totalPrice {
    double ukuranPrice =
        selectedUkuran.fold(0, (sum, ukuran) => sum + ukuran.price);
    return (ukuranPrice) * quantity;
  }
}
