import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/food_model.dart';

class CustomFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const CustomFoodTile({
    super.key,
    required this.food,
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
                //* Text Food details,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary))
                  ],
                )),

                const SizedBox(
                  height: 15,
                ),
                //*Food Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    fit: BoxFit.cover,
                    height: 120,
                    width: 120,
                  ),
                )
              ],
            ),
          ),
        ),
        //* Divider Lines
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
