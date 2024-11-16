import 'package:flutter/material.dart';
import 'package:assignment_cse3212/widgets/app_bar.dart';

class ExpandableListView extends StatefulWidget {
  @override
  _ExpandableListViewState createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  final List<Map<String, dynamic>> semesterWiseCourse = [
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
      "title": "3rd Semester",
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

  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Course in CSE'),
      body: ListView.builder(
        itemCount: semesterWiseCourse.length,
        itemBuilder: (context, index) {
          final category = semesterWiseCourse[index];
          return _buildExpandableItem(category, index);
        },
      ),
    );
  }

  Widget _buildExpandableItem(Map<String, dynamic> category, int index) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(
              title: Text(
                category['title'],
                style: const TextStyle(
                  fontFamily: 'NotoSerif',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                _expandedIndex == index
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down,
                color: Colors.black,
              ),
              onTap: () => _toggleItemExpansion(index, category['title']),
            ),
            if (_expandedIndex == index)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: (category['items'] as List<String>).map((item) {
                    return ListTile(
                      title: Text(
                        item,
                        style: const TextStyle(
                          fontFamily: 'NotoSerif',
                        ),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("You selected: $item"),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
  void _toggleItemExpansion(int index, String title) {
    setState(() {
      if (_expandedIndex == index) {
        _expandedIndex = null;
      } else {
        _expandedIndex = index;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("You selected: $title"),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}