import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widgets/appbar.dart';
import '../widgets/checkbox.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool _notification = false;

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
              CheckboxWidget(
                notification: _notification,
                onChanged: (value) {
                  setState(() {
                    _notification = value!;
                  });
                  _showToast(_notification
                      ? 'Notifications Enabled'
                      : 'Notifications Disabled');
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
