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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home, color: Color(0xff006EEE)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_divider, color: Color(0xff006EEE)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_sharp, color: Color(0xff006EEE)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/user_1.png'),
              radius: 15.0,
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
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
                SizedBox(
                  height: 150,
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: cardOne.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        width: 120,
                        height: 120,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              const Radius.circular(12.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(
                  height: 205,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) => ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 9.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(.0, 1.0), //(x,y)
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/card_${index + 1}.png',
                                fit: BoxFit.cover,
                                width: 180,
                                height: 100,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Text(
                                  'UI Design : Wireframe to Visual Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0, top: 7.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                              )
                            ],
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
                      "Article",
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
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, int index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      margin: EdgeInsets.all(10.0),
                      height: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            child: Image.asset(
                              'assets/card_${index + 1}.png',
                              fit: BoxFit.cover,
                              width: 86,
                              height: 80,
                            ),
                          ),
                          Column(
                            children: [
                              Text('123'),
                              Text('123'),
                              Text('123'),
                            ],
                          ),
                          Text('asd'),
                        ],
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
