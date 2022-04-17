// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardOne {
  String name = '';
  int totalCourse = 0;
  String asset = '';

  CardOne(String paramName, int paramTotalCourse, String paramAsset) {
    name = paramName;
    totalCourse = paramTotalCourse;
    asset = paramAsset;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cardOne = [
    CardOne("Design", 49, 'assets/icon_design.png'),
    CardOne("Soft Skill", 12, 'assets/icon_softskill.png'),
    CardOne("Art", 50, 'assets/icon_art.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: 800.0,
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/user_1.png'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Icon(Icons.notifications_outlined),
                          SizedBox(width: 10),
                        ],
                      ),
                    ]),
                SizedBox(height: 20),
                Text(
                  "Want to Study Class what's Today?",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: cardOne.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      width: 120,
                      // height: 120,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            const Radius.circular(12.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Image.asset(
                                '${cardOne[index].asset}',
                                width: 42,
                                height: 42,
                              ),
                              SizedBox(height: 17),
                              Text(
                                cardOne[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${cardOne[index].totalCourse} Courses',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Popular Course",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show All",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800]),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) => Container(
                      width: 180,
                      height: 250,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/card_1.png'),
                            SizedBox(height: 10),
                            Text('Free'),
                            Text('UI Design : Wireframe to Visual Design'),
                            Text('Rating'),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
