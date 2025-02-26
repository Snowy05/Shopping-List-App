import 'package:flutter/material.dart';
import 'package:week_3/Model/shopping_item.dart';
class ShoppingItemScreen extends StatelessWidget {
  const ShoppingItemScreen({super.key, required this.theItem});
  final ShoppingItem theItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Text(theItem.itemName),
            SizedBox(height: 4,),
            Row(
              children: [
                Text("£ ${theItem.itemCost.toString()}"),
                Spacer(),
                Row(
                  children: [
                    Icon(aisleicons[theItem.itemCategory]),
                    SizedBox(width: 8),
                    Text(theItem.getFormattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
