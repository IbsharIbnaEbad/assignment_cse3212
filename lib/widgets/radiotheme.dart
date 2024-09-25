

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RadioThemeWidget extends StatelessWidget {
  final String selectedTheme;
  final ValueChanged<String?> onChanged;

  const RadioThemeWidget({
    Key? key,
    required this.selectedTheme,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Choose Theme',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.green,
          ),
        ),
        Row(
          children: [
            Radio<String>(
              activeColor: Colors.black87,
              value: "Dark",
              groupValue: selectedTheme,
              onChanged: (value) {
                onChanged(value);
                _showToast('You activated Dark mode');
              },
            ),
            const Text(
              'Dark',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 90),
            Radio<String>(
              activeColor: Colors.grey,
              value: "Light",
              groupValue: selectedTheme,
              onChanged: (value) {
                onChanged(value);
                _showToast('You activated Light mode');
              },
            ),
            const Text(
              'Light',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
