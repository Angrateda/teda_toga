import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/models/wisuda.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  // text controller for location search box
  final TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Lokasi Pengiriman"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: "Masukan alamat.."),
        ),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),

          // save button
          MaterialButton(
            onPressed: () {
              // update delivery alamat
              String newAlamat = textController.text;
              context.read<Wisuda>().updateDeliveryAlamat(newAlamat);
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dikirim ke",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Consumer<Wisuda>(
                  builder: (context, wisuda, child) => Text(
                    wisuda.deliveryAlamat,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                // drop down menu
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
