import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('look for food', 'Mollit proident labore ipsum tempor id ullamco et velit ad. Magna ullamco ullamco ipsum cupidatat Lorem. Mollit est magna in officia proident ullamco nisi pariatur enim do sit. Aliqua mollit exercitation qui proident ut. Veniam ullamco labore exercitation Lorem pariatur quis aute deserunt est sint. Non non tempor labore et ad aliqua est aliquip occaecat id qui exercitation irure fugiat. Quis sit qui esse in ex quis ad mollit minim.', 'assets/images/1.png'),
  SlideInfo('fast delivery', 'Aliqua eu proident commodo amet cupidatat deserunt adipisicing dolor. Nostrud labore aliquip qui quis culpa. Amet proident occaecat reprehenderit fugiat aliqua proident. Lorem officia sit ut dolor adipisicing cupidatat consequat occaecat laboris labore. Do irure deserunt anim ex excepteur aliqua id voluptate commodo voluptate dolor ut.', 'assets/images/2.png'),
  SlideInfo('enjoy the food', 'Excepteur cillum elit veniam excepteur irure velit laboris ipsum et fugiat dolor laborum. Cupidatat consequat commodo deserunt in elit elit commodo adipisicing. Commodo in veniam labore ut ut exercitation culpa Lorem. Sint est excepteur elit ea excepteur sunt do occaecat in nostrud esse. Nulla est ipsum cillum sunt consectetur veniam consectetur Lorem sint laboris dolor sunt esse incididunt.', 'assets/images/3.png')
  
];

class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutoria_screen';
  
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late final pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener((){

      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)){
        setState(() {
          endReached = true;
        });
      }

    }
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title, 
                caption: slideData.caption, 
                imageUrl: slideData.imageUrl
                )
              ).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(), 
              child: const Text('Skip')
              ) 
              ),
          
          endReached ? 
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Begin')),
            )
            ): const SizedBox()

        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({ 
    required this.title, 
    required this.caption, 
    required this.imageUrl
    });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage( imageUrl ),),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,)

          ],
        ),
      ),
      );
  }
}