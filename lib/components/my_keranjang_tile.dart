import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/components/my_quantity_selector.dart';
import 'package:teda_toga/models/keranjang_item.dart';
import 'package:teda_toga/models/wisuda.dart';

class MyKeranjangTile extends StatelessWidget {
  final KeranjangItem keranjangItem;

  const MyKeranjangTile({super.key, required this.keranjangItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Wisuda>(
      builder: (context, wisuda, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // atribut image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      keranjangItem.atribut.image,
                      height: 100,
                    ),
                  ),

                  const SizedBox(width: 10),

                  // name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // atribut name
                      Text(keranjangItem.atribut.name),

                      // atribut price
                      Text(
                        '\Rp ' + keranjangItem.atribut.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // increment or decrement quantity
                  QuantitySelector(
                    quantity: keranjangItem.quantity,
                    atribut: keranjangItem.atribut,
                    onDecrement: () {
                      wisuda.removeFromKeranjang(keranjangItem);
                    },
                    onIncrement: () {
                      wisuda.addToKeranjang(
                          keranjangItem.atribut, keranjangItem.selectedUkuran);
                    },
                  )
                ],
              ),
            ),

            // ukuran
            SizedBox(
              height: keranjangItem.selectedUkuran.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: keranjangItem.selectedUkuran
                    .map(
                      (ukuran) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              // ukuran name
                              Text(ukuran.name),

                              // ukuran price
                              Text(' (\Rp ${ukuran.price})'),
                            ],
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
