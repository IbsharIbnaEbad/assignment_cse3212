

import 'package:assignment_cse3212/Screens/expandlistview.dart';
import 'package:flutter/material.dart';



// void main() {
//   runApp(const MaterialApp(
//     home: ContactListScreen(),
//   ));
// }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpandableListView(),
    );
  }
}