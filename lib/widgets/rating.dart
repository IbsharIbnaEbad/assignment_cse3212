import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  final double initialRating;
  final ValueChanged<double> onRatingUpdate;

  const RatingBarWidget({
    Key? key,
    required this.initialRating,
    required this.onRatingUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Rate my app',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.teal,
          ),
        ),
        RatingBar.builder(
          initialRating: initialRating,
          unratedColor: Colors.blue,
          glowColor: Colors.red,
          itemCount: 5,
          itemBuilder: (context, _) {
            return const Icon(Icons.star_border_outlined);
          },
          onRatingUpdate: onRatingUpdate,
        ),
      ],
    );
  }
}