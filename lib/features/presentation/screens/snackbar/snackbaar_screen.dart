import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbaarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbaarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context) => AlertDialog(
        title: const Text('Esta seguro?'),
        content: const Text('Eiusmod quis id adipisicing do aliquip do adipisicing. Deserunt fugiat Lorem ad qui commodo esse pariatur nisi laborum duis duis ea dolore. Nisi laboris magna deserunt ullamco.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed:() => context.pop(), child: const Text('Aceptar')),
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars and Dialogs')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Sint proident ut laboris est tempor proident laborum tempor nostrud aute ad. Aliqua consectetur pariatur magna irure occaecat amet cillum nostrud. Aute sit aliquip proident magna ipsum officia eu ut qui tempor eu nostrud amet. Aliquip mollit fugiat officia fugiat. Voluptate eiusmod mollit mollit consectetur laboris dolor qui id. Irure minim sint enim irure incididunt cillum enim commodo non eu. Proident irure enim cupidatat aliquip eiusmod et excepteur ut consectetur duis.')
                  ]
                  );
              },
              child: Text('Licencias usadas'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Dialogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}
