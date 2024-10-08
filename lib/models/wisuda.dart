import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teda_toga/models/keranjang_item.dart';

import 'atribut.dart';

class Wisuda extends ChangeNotifier {
  // list of atribut
  final List<Atribut> _menu = [
    // Topi
    Atribut(
      name: "Topi Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      description:
          "Topi Wisuda ini hanya digunakan untuk Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      image: "lib/images/Topi/hatyellow.jpeg",
      category: AtributCategory.Topi,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Topi Fakultas Ekonomi",
      description: "Topi Wisuda ini hanya digunakan untuk Fakultas Ekonomi",
      image: "lib/images/Topi/hatblue.jpeg",
      category: AtributCategory.Topi,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Topi Fakultas Psikologi",
      description: "Topi Wisuda ini hanya digunakan untuk Fakultas Psikologi",
      image: "lib/images/Topi/hatred.jpeg",
      category: AtributCategory.Topi,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Topi Fakultas Hukum",
      description: "Topi Wisuda ini hanya digunakan untuk Fakultas Hukum",
      image: "lib/images/Topi/hatpurple.jpeg",
      category: AtributCategory.Topi,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Topi Fakultas Teknik",
      description: "Topi Wisuda ini hanya digunakan untuk Fakultas Teknik",
      image: "lib/images/Topi/hatorange.jpeg",
      category: AtributCategory.Topi,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),

    // Jubah
    Atribut(
      name: "Jubah Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      description:
          "Jubah Wisuda ini hanya digunakan untuk Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      image: "lib/images/Jubah/jubah1.jpg",
      category: AtributCategory.Jubah,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Jubah Fakultas Ekonomi",
      description: "Jubah Wisuda ini hanya digunakan untuk Fakultas Ekonomi",
      image: "lib/images/Jubah/jubah2.jpg",
      category: AtributCategory.Jubah,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Jubah Fakultas Psikologi",
      description: "Jubah Wisuda ini hanya digunakan untuk Fakultas Psikologi",
      image: "lib/images/Jubah/jubah3.jpg",
      category: AtributCategory.Jubah,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Jubah Fakultas Hukum",
      description: "Jubah Wisuda ini hanya digunakan untuk Fakultas Hukum",
      image: "lib/images/Jubah/jubah4.jpg",
      category: AtributCategory.Jubah,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Jubah Fakultas Teknik",
      description:
          "Jubah Wisuda ini hanya digunakan untuk Fakultas Teknologi Teknik",
      image: "lib/images/Jubah/jubah5.jpg",
      category: AtributCategory.Jubah,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),

    // Stola
    Atribut(
      name: "Stola Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      description:
          "Stola Wisuda ini hanya digunakan untuk Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      image: "lib/images/Stola/stola1.jpg",
      category: AtributCategory.Stola,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Stola Fakultas Ekonomi",
      description: "Stola Wisuda ini hanya digunakan untuk Fakultas Ekonomi",
      image: "lib/images/Stola/stola2.jpg",
      category: AtributCategory.Stola,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Stola Fakultas Psikologi",
      description: "Stola Wisuda ini hanya digunakan untuk Fakultas Psikologi",
      image: "lib/images/Stola/stola3.jpg",
      category: AtributCategory.Stola,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Stola Fakultas Hukum",
      description: "Stola Wisuda ini hanya digunakan untuk Fakultas Hukum",
      image: "lib/images/Stola/stola4.jpg",
      category: AtributCategory.Stola,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Stola Fakultas Teknik",
      description: "Stola Wisuda ini hanya digunakan untuk Fakultas Teknik",
      image: "lib/images/Stola/stola5.jpg",
      category: AtributCategory.Stola,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),

    // Medali
    Atribut(
      name: "Medali Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      description:
          "Medali Wisuda ini hanya digunakan untuk Fakultas Teknologi Informasi dan Komunikasi (FTIK)",
      image: "lib/images/Medali/medali1.jpg",
      category: AtributCategory.Medali,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Medali Fakultas Ekonomi",
      description: "Medali Wisuda ini hanya digunakan untuk Fakultas Ekonomi",
      image: "lib/images/Medali/medali2.jpg",
      category: AtributCategory.Medali,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Medali Fakultas Psikologi",
      description: "Medali Wisuda ini hanya digunakan untuk Fakultas Psikologi",
      image: "lib/images/Medali/medali3.jpg",
      category: AtributCategory.Medali,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Medali Fakultas Hukum",
      description: "Medali Wisuda ini hanya digunakan untuk Fakultas Hukum",
      image: "lib/images/Medali/medali4.jpg",
      category: AtributCategory.Medali,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
    Atribut(
      name: "Medali Fakultas Teknik",
      description: "Medali Wisuda ini hanya digunakan untuk Fakultas Teknik)",
      image: "lib/images/Medali/medali5.jpg",
      category: AtributCategory.Medali,
      availableUkuran: [
        Ukuran(name: "Small", price: 5000),
        Ukuran(name: "Medium", price: 10000),
        Ukuran(name: "Large", price: 15000),
      ],
    ),
  ];

  // user keranjang
  final List<KeranjangItem> _keranjang = [];

  // delivery alamat (which user can change/update)
  String _deliveryAlamat = "Kota Semarang";

  /*

  G E T T E R S

  */

  List<Atribut> get menu => _menu;
  List<KeranjangItem> get keranjang => _keranjang;
  String get deliveryAlamat => _deliveryAlamat;

  /*

  O P E R A T I O N S

  */

  // Add to keranjang
  void addToKeranjang(Atribut atribut, List<Ukuran> selectedUkuran) {
    KeranjangItem? keranjangItem = _keranjang.firstWhereOrNull((item) {
      bool isSameAtribut = item.atribut == atribut;

      bool isSameUkuran =
          ListEquality().equals(item.selectedUkuran, selectedUkuran);

      return isSameAtribut && isSameUkuran;
    });

    if (keranjangItem != null) {
      keranjangItem.quantity++;
    } else {
      _keranjang.add(
        KeranjangItem(
          atribut: atribut,
          selectedUkuran: selectedUkuran,
        ),
      );
    }
    notifyListeners();
  }

// Remove item from keranjang
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

// Get total price
  double getTotalPrice() {
    double total = 0.0; // Inisialisasi dengan 0.0 untuk tipe double

    for (KeranjangItem keranjangItem in _keranjang) {
      double itemTotal = 0.0; // Mulai itemTotal dengan 0.0

      // Hanya tambahkan harga dari ukuran yang dipilih
      for (Ukuran ukuran in keranjangItem.selectedUkuran) {
        itemTotal += ukuran.price;
      }

      total += itemTotal * keranjangItem.quantity;
    }

    return total;
  }

// Get total item count
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (KeranjangItem keranjangItem in _keranjang) {
      totalItemCount += keranjangItem.quantity;
    }

    return totalItemCount;
  }

// Clear keranjang
  void clearKeranjang() {
    _keranjang.clear();
    notifyListeners();
  }

// update delivery alamat
  void updateDeliveryAlamat(String newAlamat) {
    _deliveryAlamat = newAlamat;
    notifyListeners();
  }

/*

H E L P E R S

*/

// Display cart receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Nota Pembelian");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final keranjangItem in _keranjang) {
      receipt.writeln(
          "${keranjangItem.quantity} x ${keranjangItem.atribut.name}"); // Hanya menampilkan nama atribut

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
    receipt.writeln();
    receipt.writeln("Dikirim ke: $_deliveryAlamat");

    return receipt.toString();
  }

  // format price
  String _formatPrice(double price) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
    return formatCurrency.format(price);
  }

  // format ukuran price
  String _formatUkuran(List<Ukuran> ukuran) {
    return ukuran
        .map((ukuran) => "${ukuran.name} (${_formatPrice(ukuran.price)})")
        .join(", ");
  }
}
