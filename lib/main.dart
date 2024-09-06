import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(assignment());
}

class assignment extends StatelessWidget {
  const assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
            'data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 400,
                child: Image.asset('assets/images/q.jpg'),
              ),
              Padding(

                padding: const EdgeInsets.all(12.0),
                child: Text('we are looking for sotruj',
                  style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue, // Background color
                    foregroundColor: Colors.white
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'toast is on the bottom ',
                        // toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 22,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );

                  },
                  child: Text('Button')
              )

            ]
        ),
      ),


    );
  }
}

