
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgests_app/config/theme/app_theme.dart';

//lista de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// simple bolean
final isDarkmodeProvider = StateProvider((ref) => false);

// simple int 
final selectColorProvider = StateProvider((ref) => 0);

// obgeto de tipo AppThemme (custom)
final themeNonifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(
  (ref) => ThemeNotifier(),
  );

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  // STATE = Estado = new AppTheme
  ThemeNotifier():super(AppTheme());

  void toggleDarkmode(){
    state = state.copyWith( isDarkmode: !state.isDarkmode);
  }

  void changeColorsIndex( int colorIndex){
    state = state.copyWith( selectedColor: colorIndex);
  }

}
