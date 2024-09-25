import 'package:assignment_cse3212/screens/radio.dart';
import 'package:assignment_cse3212/screens/rating_screen.dart';
import 'package:assignment_cse3212/screens/sliderscreen.dart';
import 'package:assignment_cse3212/screens/switch_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import 'Checkboxscreen.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Assignment Two'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckboxScreen()),
                  );
                },
                child: const Text('Checkbox'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RadioThemeScreen()),
                  );
                },
                child: const Text('Radio Theme'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SliderScreen()),
                  );
                },
                child: const Text('Volume Slider'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RatingScreen()),
                  );
                },
                child: const Text('Rating Bar'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SwitchScreen()),
                  );
                },
                child: const Text('Switch Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
