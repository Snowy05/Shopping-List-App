import 'package:flutter/material.dart';
import 'package:week_3/Widgets/bakery_category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories'),),

      body: SafeArea(
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 6,
          children: [

            Container(
              height: 200,
              width: 200,
              child: Image.asset("Assets/bakery.jpg"),
            ),

            Container(
              child: MaterialButton(child: Image.asset(height: 200, width: 200, "Assets/meat.jpg"),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(ctx)=>BakeryCategory()));},
              ),
            ),
            Container(
              child: Image.asset(height: 200, width: 200, "Assets/meat.jpg"),
            ),
            Container(
              child: Image.asset(height: 200, width: 200, "Assets/meat.jpg"),
            ),
            Container(
              child: Image.asset(height: 200, width: 200, "Assets/meat.jpg"),
            ),
            Container(
              child: Image.asset(height: 200, width: 200, "Assets/meat.jpg"),
            ),

          ],
          )
      ),
    );
  }
}
