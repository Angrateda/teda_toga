import 'package:flutter/material.dart';
import 'package:teda_toga/models/atribut.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Atribut atribut;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.atribut,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          // quantity count
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString(),
                ),
              ),
            ),
          ),

          // increase button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
