import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/switch.dart';


class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _darkModeEnabled = false;

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
              SwitchWidget(
                darkModeEnabled: _darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _darkModeEnabled = value;
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
