// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Soho',
    ),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'projects': (context) => MyProjects()
    },
  ));
}
