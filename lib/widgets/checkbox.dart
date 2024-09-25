import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  final bool notification;
  final ValueChanged<bool?> onChanged;

  const CheckboxWidget({
    Key? key,
    required this.notification,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns children on both ends
      children: [
        const Text(
          'CLICK TO SEE SNACKBAR',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Transform.scale(
          scale: 1,
          child: Checkbox(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero), // Square shape
              side: BorderSide(width: 0.5, color: Colors.blueGrey),
            ),
            checkColor: Colors.blueGrey,
            activeColor: Colors.lightGreen,
            value: notification,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
