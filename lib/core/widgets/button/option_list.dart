import 'package:flutter/material.dart';
import 'option_item.dart';

class OptionList extends StatelessWidget {
  final List<Map<String, dynamic>> options;

  OptionList({required this.options});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: options.length,
      shrinkWrap: true, // To wrap the GridView with limited height
      itemBuilder: (context, index) {
        final option = options[index];
        return OptionItem(
          figure: option['figure'],
          onTap: option['onTap'],
        );
      },
    );
  }
}
