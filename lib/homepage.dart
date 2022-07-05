// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myrecur(num1, type) {
    return Row(
      children: [
        Row(
          children: [
            Text(num1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Container(
              margin: EdgeInsets.only(left: 2, top: 10),
              child: Text(type),
            )
          ],
        ),
      ],
    );
  }

  myskill(icon, tech) {
    return Container(
        width: 105,
        height: 115,
        child: Card(
            margin: EdgeInsets.all(0),
            color: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(
                  height: 10,
                ),
                Text(tech, style: TextStyle(color: Colors.white))
              ],
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: PopupMenuButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: TextButton(
                        child: Text('Projects',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'projects');
                        },
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                        child: TextButton(
                          child: Text(
                            'About Me',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'about');
                          },
                        ),
                        value: 2),
                  ]),
          elevation: 0,
          backgroundColor: Colors.black),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/img.png',
                      height: 400,
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      "Raizel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myrecur('78', 'Projects'),
                      myrecur('10', 'personal'),
                      myrecur('120', 'messages')
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Text('Skills:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myskill(Icons.android, 'Android'),
                          myskill(Icons.android, 'Projects'),
                          myskill(Icons.android, 'assign'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myskill(Icons.android, 'Collabs'),
                          myskill(Icons.android, 'Achieves'),
                          myskill(Icons.android, 'Others'),
                        ],
                      )
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
