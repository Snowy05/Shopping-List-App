import 'package:flutter/material.dart';
import 'package:week_3/Widgets/shopping_item_screen.dart';

import '../Model/shopping_item.dart';

class ShoppingListItems extends StatelessWidget {
  const ShoppingListItems({super.key, required this.myshoppingList});

  final List<ShoppingItem> myshoppingList;

  @override
  Widget build(BuildContext context) =>
      ListView.builder(
      itemCount: myshoppingList.length,
      itemBuilder: (context, index) =>
       ShoppingItemScreen(theItem: myshoppingList[index])
    );
}
