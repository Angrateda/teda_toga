import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/models/atribut.dart';
import 'package:teda_toga/models/wisuda.dart';

import '../components/my_button.dart';

class AtributPage extends StatefulWidget {
  final Atribut atribut;

  AtributPage({
    super.key,
    required this.atribut,
  });

  @override
  State<AtributPage> createState() => _AtributPageState();
}

class _AtributPageState extends State<AtributPage> {
  Ukuran? selectedUkuran;

  @override
  void initState() {
    super.initState();
    selectedUkuran = widget.atribut.availableUkuran.isNotEmpty
        ? widget.atribut.availableUkuran[0]
        : null;
  }

  void addToKeranjang(Atribut atribut, Ukuran? selectedUkuran) {
    Navigator.pop(context);
    List<Ukuran> currentlySelectedUkuran = [];
    if (selectedUkuran != null) {
      currentlySelectedUkuran.add(selectedUkuran);
    }
    context.read<Wisuda>().addToKeranjang(atribut, currentlySelectedUkuran);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.atribut.image),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.atribut.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\Rp ${widget.atribut.price}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(widget.atribut.description),
                      const SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      Text(
                        "Ukuran",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.atribut.availableUkuran.length,
                          itemBuilder: (context, index) {
                            Ukuran ukuran =
                                widget.atribut.availableUkuran[index];

                            return RadioListTile<Ukuran>(
                              title: Text(ukuran.name),
                              subtitle: Text(
                                '\Rp ${ukuran.price}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: ukuran,
                              groupValue: selectedUkuran,
                              onChanged: (Ukuran? value) {
                                setState(() {
                                  selectedUkuran = value;
                                });
                              },
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              controlAffinity: ListTileControlAffinity.trailing,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  onTap: () => addToKeranjang(widget.atribut, selectedUkuran),
                  text: 'Tambah ke Keranjang',
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25, top: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
