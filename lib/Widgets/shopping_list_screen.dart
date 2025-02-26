import 'package:flutter/material.dart';
import 'package:week_3/Model/shopping_item.dart';
import 'package:week_3/Navigation/navigation_drawer.dart';
import 'package:week_3/Widgets/input_form.dart';
import 'package:week_3/Widgets/shopping_list_items.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {

  final List<ShoppingItem> myShoppingList = [
    ShoppingItem(
        itemName: 'Milk',
        itemCost: 2.90,
        itemCategory: Aisles.diary,
        datePurchased: DateTime.now()),

    ShoppingItem(
        itemName: 'Meat',
        itemCost: 4.90,
        itemCategory: Aisles.meat,
        datePurchased: DateTime.now()),
    
    ShoppingItem(
        itemName: 'Bread',
        itemCost: 4.90,
        itemCategory: Aisles.bakery,
        datePurchased: DateTime.now())
  ];

  void _addItemToShoppingList(ShoppingItem item){
    setState(() {
      myShoppingList.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ShoppingNavigationDrawer(),
      appBar: AppBar(
        title: Text('Shopping List App'),
      actions: [IconButton(onPressed: _displayOverlay, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [

          Expanded(child: 
          ShoppingListItems(myshoppingList: myShoppingList)
          ),
        ],
      ),
    );
  }

  void _displayOverlay(){
    showModalBottomSheet(context: context,
        builder: (ctx)=>
        InputForm(addItemToList: _addItemToShoppingList,),
    );
  }
}
