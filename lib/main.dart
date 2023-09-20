import 'package:flutter/material.dart';
import 'package:tabuadinha_flutter_project/core/constants/constants.dart';
import 'package:tabuadinha_flutter_project/core/theme/light_theme.dart';
import 'package:tabuadinha_flutter_project/features/home.dart';
import 'package:tabuadinha_flutter_project/features/splash.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

  const App({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.theme,
      initialRoute: Routes.splash,
      navigatorKey: navigator,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.main: (context) => const HomePage(),
      },
    );
  }
}
