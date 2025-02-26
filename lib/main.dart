import 'package:flutter/material.dart';
import 'package:week_3/Widgets/shopping_list_screen.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ShoppingListScreen(),
    );
  }
}


