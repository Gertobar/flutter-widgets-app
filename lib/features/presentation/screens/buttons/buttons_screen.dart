import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'button_screen';
  
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded) ,
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            ElevatedButton(onPressed: null, child: const Text('Elevated Disable')),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Icon')
              ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
               label: Text('Filled Icon')
               ),
            OutlinedButton(onPressed: () { }, child: const Text('OutLine')),
            OutlinedButton.icon(
              onPressed: () { }, 
              icon: Icon(Icons.terminal),
              label: const Text('OutLine Icon')
              ),
            TextButton(onPressed: (){}, child: const Text('TextButton')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.account_box_outlined),
              label: const Text('TextButton Icon')
              ),
            
            CustomButtom(), 

            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor:  MaterialStatePropertyAll(colors.primary),
                iconColor:  const MaterialStatePropertyAll(Colors.white),
              ),
              ),


          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('hola mundo', style: TextStyle(color: Colors.white),)
            ),
        ),
      ),
    );
  }
}