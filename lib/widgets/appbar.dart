import 'package:flutter/material.dart';

AppBar customAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        letterSpacing: 1.5,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.blueAccent, Colors.cyan],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
  );
}
