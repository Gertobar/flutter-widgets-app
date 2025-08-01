
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgests_app/config/theme/app_theme.dart';

//lista de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// simple bolean
final isDarkmodeProvider = StateProvider((ref) => false);

// simple int 
final selectColorProvider = StateProvider((ref) => 0);