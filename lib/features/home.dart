import 'package:flutter/material.dart';
import 'package:tabuadinha_flutter_project/core/widgets/button/option_list.dart';

class HomePage extends StatelessWidget {
  static GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> options = [
      {
        'figure': Icon(Icons.star, size: 48, color: Colors.yellow),
        'onTap': () => print('Option 1 clicked'),
      },
      {
        'figure': Icon(Icons.favorite, size: 48, color: Colors.red),
        'onTap': () => print('Option 2 clicked'),
      },
      {
        'figure': Icon(Icons.thumb_up, size: 48, color: Colors.blue),
        'onTap': () => print('Option 3 clicked'),
      },
      {
        'figure': Icon(Icons.thumb_down, size: 48, color: Colors.grey),
        'onTap': () => print('Option 4 clicked'),
      },
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OptionList(options: options),
          ],
        ),
      ),
    );
  }
}
