import 'package:flutter/material.dart';
import 'package:week_3/Model/shopping_item.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key, required this.addItemToList});
  final Function(ShoppingItem theItem) addItemToList;


  @override
  State<InputForm> createState() => _InputFormState();
}
class _InputFormState extends State<InputForm> {
  
  final _itemNameController = TextEditingController();
  final _itemCostController = TextEditingController();
  Aisles? _theselectedCategory = Aisles.bakery;



  void dispose(){
    _itemCostController.dispose();
    _itemNameController.dispose();
    super.dispose();
  }

  void _validateUserInput(){
    final validatedCost = double.tryParse(_itemCostController.text);
    final finalCost = validatedCost == null || validatedCost<0;

    if(_itemNameController.text.trim().isEmpty || finalCost || _theselectedDate == null){
      showDialog(
          context: context,
          builder: (ctx)=> AlertDialog(
            title:Text('Error Message'),
          content: Text("Please make sure you have filled out valid name, cost and selected a date!"),
            actions: [
              TextButton(onPressed: (){Navigator.pop(ctx);}, child: Text("Close"))
            ],
          ));
    }
    return;
  }

  DateTime? _theselectedDate;

  void _disolayDatePicker() async {
    final _selectedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().month - 1),
        lastDate: DateTime.now());

    setState(() {
      _theselectedDate = _selectedDate;
    });

    if (_selectedDate != null) {
      widget.addItemToList(ShoppingItem(
        itemName: _itemNameController.text,
        itemCost: double.parse(_itemCostController.text),
        itemCategory: _theselectedCategory!,
        datePurchased: _selectedDate!,
      ));
    }
  }




  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    
    child: Column(
        
        children: [
          Expanded(child: 
          TextField(
            controller: _itemNameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("Please input name of item")
            ),
          ),
          ),
          Expanded(child: 
              TextField(
                controller: _itemCostController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    label: Text("Please input price of item"),
                  prefix: Text("£")
                ),
              ),
          ),
          
          Expanded(child: Row(
            children: [
              Text("Please select date!"),
              IconButton(onPressed: _disolayDatePicker, icon: Icon(Icons.calendar_month_outlined)),
              Container(
                child: DropdownButton(
                    value: _theselectedCategory,
                    items: Aisles.values.map((aisles)
                    => DropdownMenuItem(
                        value: aisles,
                        child: Text(aisles.name.toString()))).toList(),
                    onChanged: (value){
                      setState(() {
                        _theselectedCategory=value;
                      });
                    }),
              ),
            ],
          ),
          ),
          Expanded(child: Row(
            children: [
              TextButton(onPressed: _validateUserInput, child: Text("Add details to list")),
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Close")),
            ],
          )),
      ],
    ),
        
    );
  }
}
