import 'package:flutter/material.dart';
import 'package:week_3/Widgets/bakery_category.dart';
import 'package:week_3/Widgets/categories.dart';
class ShoppingNavigationDrawer extends StatelessWidget {
  const ShoppingNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('Shopping App')),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Profile'),
            onTap: ()
            {},
          ),
          ListTile(
            leading: Icon(Icons.catching_pokemon),
            title: Text('Categories'),
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:
              (ctx)=> BakeryCategory()
              ));
              },
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Costs Analytics'),
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CategoriesScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: ()
            {},
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text('Close'),
            onTap: ()
            {
              Navigator.pop(context);
            },
          )

        ],
      ),

    );
  }
}
