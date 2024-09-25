import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final double volume;
  final ValueChanged<double> onChanged;

  const SliderWidget({
    Key? key,
    required this.volume,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Volume: ${volume.toInt()}'),
        Slider(
          value: volume,
          min: 0,
          activeColor: Colors.blueGrey,
          max: 100,
          divisions: 100,
          label: volume.round().toString(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}