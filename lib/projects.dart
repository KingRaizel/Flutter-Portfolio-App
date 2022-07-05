// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myproj(lang, title, descp, stars) {
    return Container(
        height: 220,
        width: MediaQuery.of(context).size.width * 0.99,
        child: Card(
          color: Color(0xff262628),
          child: Container(
            margin: EdgeInsets.only(left: 15, top: 25, right: 15, bottom: 10),
            color: Color(0xff262628),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (Text(lang,
                    style: TextStyle(color: Colors.white, fontSize: 25))),
                SizedBox(
                  height: 5,
                ),
                (Text(title,
                    style: TextStyle(color: Colors.white, fontSize: 30))),
                SizedBox(
                  height: 5,
                ),
                (Text(descp,
                    style: TextStyle(color: Colors.white, fontSize: 18))),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.white70, size: 20),
                    Text(stars,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
            'Projects',
            style: TextStyle(fontSize: 35),
          ),
          backgroundColor: Color(0xff252525)),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myproj(
                'Flutter', 'Flutter is an ', 'app development language', '8'),
            myproj('Python', 'Python is an ', 'easy Language', '9'),
            myproj('Java', 'Java is an ', 'oops Language', '5'),
            myproj('Solidity', 'Solidity is an  ',
                'smart contract making language', '2'),
          ],
        ),
      )),
    );
  }
}
