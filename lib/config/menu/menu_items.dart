import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[

  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introducction riverpod',
    link: '/counter-riverpod',
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios Botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Varios Botones en Flutter',
    link: '/cards',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

    MenuItem(
    title: 'Snackbars and Dialogs',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),

    MenuItem(
    title: 'Animated container',
    subTitle: 'Statefull widget animated',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'A series of controls in flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'Introduction of application',
    subTitle: 'small application tutorial',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),

  MenuItem(
    title: 'InfiniteScroll and pull',
    subTitle: 'infinite List and pull to refhesh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),

  MenuItem(
    title: 'Change theme',
    subTitle: 'Change the app theme',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
