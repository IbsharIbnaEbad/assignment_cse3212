import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/rating.dart';


class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _rating = 3;

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
              RatingBarWidget(
                initialRating: _rating,
                onRatingUpdate: (rating) {
                  setState(() {
                    _rating = rating;
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
