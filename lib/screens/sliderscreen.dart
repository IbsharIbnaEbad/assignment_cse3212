import 'package:flutter/material.dart';

import '../widgets/SliderWidget.dart';
import '../widgets/appbar.dart';


class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _volume = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Checkbox Screen'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SliderWidget(
                volume: _volume,
                onChanged: (value) {
                  setState(() {
                    _volume = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
