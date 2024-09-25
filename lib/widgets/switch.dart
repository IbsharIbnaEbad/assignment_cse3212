



import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final bool darkModeEnabled;
  final ValueChanged<bool> onChanged;

  const SwitchWidget({
    Key? key,
    required this.darkModeEnabled,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Enable Dark Theme',
          style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        Switch(
          activeColor: Colors.teal,
          inactiveThumbColor: Colors.blueGrey,
          value: darkModeEnabled,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
