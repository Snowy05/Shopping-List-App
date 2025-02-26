import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

enum Aisles {fruit_and_veg,bakery, diary, confectionary, household, meat }
const aisleicons = {
  Aisles.bakery: Icons.house,
  Aisles.fruit_and_veg: Icons.apple,
  Aisles.diary: Icons.local_drink,
  Aisles.confectionary : Icons.ice_skating,
  Aisles.meat: Icons.menu
};

final myUid = Uuid();
final formattedDate = DateFormat();

class ShoppingItem{

  final String itemId;
  final String itemName;
  final double itemCost;
  final DateTime datePurchased;
  final Aisles itemCategory;

  ShoppingItem({
    required this.itemName,
    required this.itemCost,
    required this.itemCategory,
    required this.datePurchased
  }):itemId=myUid.v4();

  String get getFormattedDate{
    return formattedDate.format(datePurchased);
  }
}
