import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/components/my_button.dart';
import 'package:teda_toga/components/my_keranjang_tile.dart';
import 'package:teda_toga/models/wisuda.dart';
import 'payment_page.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Wisuda>(
      builder: (context, wisuda, child) {
        // keranjang
        final userKeranjang = wisuda.keranjang;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Keranjang"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear keranjang
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Yakin mau Hapus Keranjang?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Batal"),
                        ),

                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            wisuda.clearKeranjang();
                          },
                          child: const Text("Ya"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              // list keranjang
              Expanded(
                child: Column(
                  children: [
                    userKeranjang.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Keranjangnya kosong..."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userKeranjang.length,
                              itemBuilder: (context, index) {
                                // get individual keranjang item
                                final keranjangItem = userKeranjang[index];

                                // return keranjang tile UI
                                return MyKeranjangTile(
                                    keranjangItem: keranjangItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // button bayar
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
                text: "Pembayaran",
              ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
