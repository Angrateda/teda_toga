import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teda_toga/models/keranjang_item.dart';

import 'atribut.dart';

class Wisuda extends ChangeNotifier {
  // list of atribut
  final List<Atribut> _menu = [
    // ftik
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Teknik dan Ilmu Komputer",
      image: "lib/images/FTIK/liv tyler.png",
      price: 15000,
      category: AtributCategory.FTIK,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Jubah Wisuda",
      description:
          "Jubah atau Toga khusus untuk Fakultas Teknik dan Ilmu Komputer",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTIK,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Stola",
      description: "Samir/Stola khusus untuk Fakultas Teknik dan Ilmu Komputer",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTIK,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Kalung Wisuda",
      description:
          "Kalung Wisuda dan ada Medali khusus untuk Fakultas Teknik dan Ilmu Komputer",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTIK,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Teknik dan Ilmu Komputer",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTIK,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),

    // fe
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Ekonomi",
      image: "lib/images/FTIK/apik.jpg",
      price: 15000,
      category: AtributCategory.FEkonomi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Jubah Wisuda",
      description: "Jubah atau Toga khusus untuk Fakultas Ekonomi",
      image: "lib/images/FTIK/clairo.jpg",
      price: 20.000,
      category: AtributCategory.FEkonomi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Stola",
      description: "Samir/Stola khusus untuk Fakultas Ekonomi",
      image: "lib/images/FTIK/purple.jpg",
      price: 20.000,
      category: AtributCategory.FEkonomi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Kalung Wisuda",
      description: "Kalung Wisuda dan ada Medali khusus untuk Fakultas Ekonomi",
      image: "lib/images/FTIK/sky.jpg",
      price: 20.000,
      category: AtributCategory.FEkonomi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Ekonomi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FEkonomi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    // ft
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Teknik",
      image: "lib/images/FTIK/liv tyler.png",
      price: 15000,
      category: AtributCategory.FTeknik,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Jubah Wisuda",
      description: "Jubah atau Toga khusus untuk Fakultas Teknik",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTeknik,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Stola",
      description: "Samir/Stola khusus untuk Fakultas Teknik ",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTeknik,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Kalung Wisuda",
      description: "Kalung Wisuda dan ada Medali khusus untuk Fakultas Teknik",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTeknik,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Teknik",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FTeknik,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),

    // fp
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Psikologi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 15000,
      category: AtributCategory.FPsikologi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Jubah Wisuda",
      description: "Jubah atau Toga khusus untuk Fakultas Psikologi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FPsikologi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Stola",
      description: "Samir/Stola khusus untuk Fakultas Psikologi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FPsikologi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Kalung Wisuda",
      description:
          "Kalung Wisuda dan ada Medali khusus untuk Fakultas Psikologi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FPsikologi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Psikologi",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FPsikologi,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),

    // fh
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Hukum",
      image: "lib/images/FTIK/liv tyler.png",
      price: 15000,
      category: AtributCategory.FHukum,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Jubah Wisuda",
      description: "Jubah atau Toga khusus untuk Fakultas Hukum",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FHukum,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Stola",
      description: "Samir/Stola khusus untuk Fakultas Hukum",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FHukum,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Kalung Wisuda",
      description: "Kalung Wisuda dan ada Medali khusus untuk Fakultas Hukum",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FHukum,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
    Atribut(
      name: "Topi Wisuda",
      description: "Topi Wisuda khusus untuk Fakultas Hukum",
      image: "lib/images/FTIK/liv tyler.png",
      price: 20.000,
      category: AtributCategory.FHukum,
      availableUkuran: [
        Ukuran(name: "Large", price: 20.000),
        Ukuran(name: "Extra Large", price: 25.000),
        Ukuran(name: "Extra Extra Large", price: 30.000),
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Atribut> get menu => _menu;
  List<KeranjangItem> get keranjang => _keranjang;

  /*

  O P E R A T I O N S

  */

  // user keranjang
  final List<KeranjangItem> _keranjang = [];

  // nambah ke keranjang
  void addToKeranjang(Atribut atribut, List<Ukuran> selectedUkuran) {
    // check if item already with the same atribut and selected ukuran
    KeranjangItem? keranjangItem = _keranjang.firstWhereOrNull((item) {
      // check jika atribut item sama
      bool isSameAtribut = item.atribut == atribut;

      // check jika list of selected ukuran sama
      bool isSameUkuran =
          ListEquality().equals(item.selectedUkuran, selectedUkuran);

      return isSameAtribut && isSameUkuran;
    });

    // jika item sudah ada di keranjang, tambah quantity
    if (keranjangItem != null) {
      keranjangItem.quantity++;
    }

    // otherwise, tambah item keranjang ke keranjang
    else {
      _keranjang.add(
        KeranjangItem(
          atribut: atribut,
          selectedUkuran: selectedUkuran,
        ),
      );
    }
    notifyListeners();
  }

  // hapus dari keranjang
  void removeFromKeranjang(KeranjangItem keranjangItem) {
    int keranjangIndex = _keranjang.indexOf(keranjangItem);

    if (keranjangIndex != -1) {
      if (_keranjang[keranjangIndex].quantity > 1) {
        _keranjang[keranjangIndex].quantity--;
      } else {
        _keranjang.removeAt(keranjangIndex);
      }
    }

    notifyListeners();
  }

  // get total harga di keranjang
  double getTotalPrice() {
    double total = 0.0;

    for (KeranjangItem keranjangItem in _keranjang) {
      double itemTotal = keranjangItem.atribut.price;

      for (Ukuran ukuran in keranjangItem.selectedUkuran) {
        itemTotal += ukuran.price;
      }

      total += itemTotal * keranjangItem.quantity;
    }

    return total;
  }

  // get total number item di keranjang
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (KeranjangItem keranjangItem in _keranjang) {
      totalItemCount += keranjangItem.quantity;
    }

    return totalItemCount;
  }

  // clear keranjang
  void clearKeranjang() {
    _keranjang.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate nota
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Nota Pembelian");
    receipt.writeln();

    // format the data to include up to second only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final keranjangItem in _keranjang) {
      receipt.writeln(
          "${keranjangItem.quantity} x (${keranjangItem.atribut.name} - ${_formatPrice(keranjangItem.atribut.price)}");
      if (keranjangItem.selectedUkuran.isNotEmpty) {
        receipt.writeln(
            "  Ukuran: ${_formatUkuran(keranjangItem.selectedUkuran)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Barang: ${getTotalItemCount()}");
    receipt.writeln("Total Harga: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\Rp ${price.toStringAsFixed(2)}";
  }

  // format list of ukuran into string summary
  String _formatUkuran(List<Ukuran> ukuran) {
    return ukuran
        .map((ukuran) => "${ukuran.name} (${_formatPrice(ukuran.price)})")
        .join(", ");
  }
}
