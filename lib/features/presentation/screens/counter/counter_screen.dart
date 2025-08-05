import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgests_app/features/presentation/providers/counter_provider.dart';
import 'package:widgests_app/features/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounted = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(onPressed: () {
            
          }, 
          icon: Icon(isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
          )
        ], 
      ),

      body: Center(
        child: Text('Valor: $clickCounted', style: Theme.of(context).textTheme.titleLarge,),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier)
          //   .update((state) => state + 1);
        }
      ),
    );
  }
}