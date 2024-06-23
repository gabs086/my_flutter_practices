import 'package:flutter/material.dart';

class CustomDescriptionBox extends StatelessWidget {
  const CustomDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var secondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //* Delivery fee
          Column(
            children: [
              Text(
                '\$0.99',
                style: primaryTextStyle,
              ),
              Text(
                '\$Delivery fee',
                style: secondaryTextStyle,
              ),
            ],
          ),

          //* Delivery

          Column(
            children: [
              Text('15-30 min', style: primaryTextStyle),
              Text('Delivery time', style: secondaryTextStyle),
            ],
          )
        ],
      ),
    );
  }
}
