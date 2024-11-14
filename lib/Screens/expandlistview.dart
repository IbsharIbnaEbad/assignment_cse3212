import 'package:assignment_cse3212/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ExpandableListView extends StatelessWidget {
  final List<Map<String, dynamic>> semester_Wise_Course = [
    {
      "title": "1st Semester",
      "items": [
        "Introduction to Computing",
        "Introduction to Computing Sessional",
        "Discrete Mathematics",
        "Computer Aided Engineering Drawing",
        "Calculus and Linear Algebra",
        "Basic English",
        "Bangladesh Studies",
        "Basic Computer Applications"
      ]
    },
    {
      "title": "2nd Semester",
      "items": [
        "Structured Programming",
        "Structured Programming Sessional",
        "Differential Equation, Laplace Transform and Fourier Analysis",
        "Physics: Heat, Light and Sound",
        "Physics Laboratory",
        "Electrical Circuits",
        "Electrical Circuits Sessional",
        "Functional English",
        "Introduction to Sociology"
      ]
    },
    {
      "title": "3rd Semester ",
      "items": [
        "Data Structures",
        "Data Structures Sessional",
        "Electronic Devices and Circuits",
        "Electronic Devices and Circuits Sessional",
        "Coordinate Geometry & Vector Analysis",
        "Introduction to Economics",
        "Statistics",
        "Chemistry",
        "Electromagnetism and Modern Physics"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Course in CSE'),
      body: ListView.builder(
        itemCount: semester_Wise_Course.length,
        itemBuilder: (context, index) {
          final category = semester_Wise_Course[index];
          return ExpansionTile(

            title: Center(
              child: Text(
                category['title'],
                style: const TextStyle(
                  fontFamily: 'NotoSerif',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ),
            children: (category['items'] as List<String>)
                .map((item) => ListTile(
              title: Center(
                child: Text(
                  item,
                  style: TextStyle(
                    fontFamily: 'NotoSerif',

                  ),
                ),
              ),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}
