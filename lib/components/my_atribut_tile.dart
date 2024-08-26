import 'package:flutter/material.dart';
import '../models/atribut.dart';

class AtributTile extends StatelessWidget {
  final Atribut atribut;
  final void Function()? onTap;

  const AtributTile({
    super.key,
    required this.atribut,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // text atribut detail
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(atribut.name),
                      const SizedBox(height: 10),
                      Text(
                        atribut.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 15),

                // atribut gambar
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(atribut.image, height: 120)),
              ],
            ),
          ),
        ),

        // divider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
