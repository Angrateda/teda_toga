import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // delivery fee
            Column(
              children: [
                Text(
                  'Rp 1.000',
                  style: myPrimaryTextStyle,
                ),
                Text(
                  'Pajak pengiriman',
                  style: mySecondTextStyle,
                ),
              ],
            ),

            // delivery time
            Column(
              children: [
                Text(
                  '15-30 menit',
                  style: myPrimaryTextStyle,
                ),
                Text(
                  'Waktu pengiriman',
                  style: mySecondTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
