import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/appbar.dart';
import '../widgets/radiotheme.dart';

class RadioThemeScreen extends StatefulWidget {
  const RadioThemeScreen({super.key});

  @override
  State<RadioThemeScreen> createState() => _RadioThemeScreenState();
}

class _RadioThemeScreenState extends State<RadioThemeScreen> {
  String _selectedTheme = 'Dark';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Checkbox Screen'),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioThemeWidget(
                selectedTheme: _selectedTheme,
                onChanged: (value) {
                  setState(() {
                    _selectedTheme = value!;
                  });
                  _showToast('You activated $value mode');
                },
              ),
            ],
          ),
        ),
      ),
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
