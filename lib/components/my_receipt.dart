import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/models/wisuda.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Terima kasih telah berbelanja!"),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Wisuda>(
                builder: (context, wisuda, child) =>
                    Text(wisuda.displayCartReceipt()),
              ),
            ),
            const SizedBox(height: 25),
            const Text("Estimasi pengiriman: 1 hari"),
          ],
        ),
      ),
    );
  }
}
