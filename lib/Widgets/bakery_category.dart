import 'package:flutter/material.dart';

class BakeryCategory extends StatelessWidget {
  const BakeryCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Bakery Category'),
            bottom: TabBar(tabs:
            [
              Tab(text: 'Bread',),
              Tab(text: 'Scones',),
              Tab(text: 'Croissants',),
              Tab(text: 'Rolls & Bagels',),
            ]
            ),
          ),
          body: TabBarView(
              children:
          [
            Container(child: Column(
              children: [
                Image.asset("Assets/bagels.jpg"),
                Text('Bread'),
                Text('Example Text')
              ],
            ),),
            Container(child: Column(
              children: [
                Image.asset("Assets/bagels.jpg"),
                Text('Bread'),
                Text('Example Text')
              ],
            ),),
            Container(child: Column(
              children: [
                Image.asset("Assets/bagels.jpg"),
                Text('Bread'),
                Text('Example Text')
              ],
            ),),
            Container(child: Column(
              children: [
                Image.asset("Assets/bagels.jpg"),
                Text('Bread'),
                Text('Example Text')
              ],
            ),),

          ]
          ),

    ));
  }
}
