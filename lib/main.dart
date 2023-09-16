import 'package:flutter/material.dart';
import 'package:tabuadinha_flutter_project/core/constants/constants.dart';
import 'package:tabuadinha_flutter_project/core/theme/light_theme.dart';
import 'package:tabuadinha_flutter_project/features/home.dart';
import 'package:tabuadinha_flutter_project/features/splash.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  static GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.theme,
      initialRoute: Routes.splash,
      navigatorKey: navigator,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.main: (context) => const HomeScreen(title: 'Main Screen'),
      },
    );
  }
}
