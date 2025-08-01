import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgests_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

       itemCount: appMenuItem.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItem[index];

        return _customListTitle(menuItem: menuItem); 
      },
    );
  }
}

class _customListTitle extends StatelessWidget {
  const _customListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

     final colors  = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => const ButtonsScreen(),
        //   ),
        //   );
        // Navigator.pushNamed(context, menuItem.link);

        context.push(menuItem.link);
        // context.pushNamed(CardsScreen.name);

      },
      
    );
  }
}