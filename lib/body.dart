import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/user_post.dart';

import 'logo.dart';
import 'menu_app.dart';
import 'model/color.dart';
import 'model/feeds.dart';
import 'model/home_screen_menu.dart';

class Birthdays {
  String avatar;
  String name;
  String age;
  bool isFemale;
  Birthdays({this.avatar, this.name, this.age, this.isFemale});
}

class Stories {
  String image;
  String avatar;
  String name;
  String post_time;

  Stories({this.image, this.avatar, this.name, this.post_time});
}

int currentSelectedItem = 0;
List<HomeScreenMenu> myList = [
  HomeScreenMenu('Feed', true, 0),
  HomeScreenMenu('Stories', false, 1),
  HomeScreenMenu('IGTV', false, 2),
  HomeScreenMenu('Events', false, 3),
];

List<Feeds> myFeeds = [
  Feeds(
      avatar: 'assets/helen_miles.png',
      userName: "Helen Miles",
      location: "China",
      comment: "lovely pic , you are so beautiful ",
      postTime: "3 HOUR AGO",
      image: 'assets/hm_1.png',
      likeCount: 0,
      commentCount: 0),
  Feeds(
      avatar: 'assets/Niloofar.png',
      userName: "Niloofar.",
      location: "Network",
      comment: " I still need to nail down a stylist, I emailed all "
          "the people that you messaged me ",
      postTime: "5 HOUR AGO",
      image: 'assets/str3.png',
      likeCount: 6329,
      commentCount: 114),
  Feeds(
      avatar: 'assets/john_legend.png',
      userName: "John Legend.",
      location: "London",
      comment: "Incredible zen interior! 😍",
      postTime: "13 HOURS AGO",
      image: 'assets/str1.png',
      likeCount: 190,
      commentCount: 5083),
];

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  List<Birthdays> myBirtdays = [
    new Birthdays(
        avatar: "assets/brt_ali_yasini.png",
        name: "Ali Yasini",
        age: "26 years old",
        isFemale: false),
    new Birthdays(
        avatar: "assets/Niloofar.png",
        name: "Niloofar",
        age: "24 years old",
        isFemale: true),
    new Birthdays(
        avatar: "assets/john_legend.png",
        name: "John Legend",
        age: "24 years old",
        isFemale: false),
    Birthdays(
        avatar: 'assets/helen_miles.png',
        name: 'Helen Mails',
        age: '21 years old',
        isFemale: true)
  ];

  List<Stories> myStories = [
    new Stories(
        avatar: "assets/str_aria_majidi.png",
        name: "Aria majidi",
        image: "assets/str1.png",
        post_time: "2 min ago"),
    new Stories(
        avatar: "assets/str_helen_miles.png",
        name: "Helen miles",
        image: "assets/str2.png",
        post_time: "2 min ago"),
    new Stories(
        avatar: "assets/str_someone.png",
        name: "Aria majidi",
        image: "assets/str3.png",
        post_time: "14 min ago"),
    new Stories(
        avatar: "assets/str_helen_miles.png",
        name: "Aria Jack",
        image: "assets/str1.png",
        post_time: "30 min ago"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Logo(),
          SizedBox(
            height: 20,
          ),

          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return Row(
                  children: <Widget>[
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          myList[currentSelectedItem].isSelected = false;
                          currentSelectedItem = index;
                          myList[currentSelectedItem].isSelected = true;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  myList[index].name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: myList[index].isSelected
                                          ? redcolor
                                          : Colors.black),
                                ),
                                myList[index].isSelected
                                    ? Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                            width: 8,
                                            height: 8,
                                            decoration: BoxDecoration(
                                                color: redcolor,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                          ),
                                        ],
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: myList.length,
              shrinkWrap: true,
            ),
          ),
          currentSelectedItem == 0
              ? Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(myFeeds[index].avatar)),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width -
                                        89 -
                                        8 -
                                        21,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          myFeeds[index].userName,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(myFeeds[index].location,
                                            style: TextStyle(color: greyColor))
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.more_horiz)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(myFeeds[index].comment),
                          SizedBox(
                            height: 5,
                          ),
                          Text(myFeeds[index].postTime,
                              style: TextStyle(color: greyColor)),
                          Container(
                              width: double.infinity,
                              child: Image.asset(myFeeds[index].image)),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Image.asset('assets/like.png'),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: redTransColor,
                                ),
                              ),
                              Text(myFeeds[index].likeCount > 1000
                                  ? ((myFeeds[index].likeCount / 1000)
                                          .toString() +
                                      'K')
                                  : myFeeds[index].likeCount.toString()),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Image.asset('assets/comment.png'),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: blueButtonColor,
                                ),
                              ),
                              Text(myFeeds[index].commentCount > 1000
                                  ? ((myFeeds[index].commentCount / 1000)
                                          .toString() +
                                      'K')
                                  : myFeeds[index].commentCount.toString()),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                    itemCount: myFeeds.length,
                    shrinkWrap: true,
                  ),
                )
              : currentSelectedItem == 1
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Today's Birthday",
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 179,
                              child: ListView.builder(
                                itemBuilder: (context, int index) {
                                  return Row(
                                    children: <Widget>[
                                      Container(
                                        width: 160,
                                        height: 179,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                            ),
                                            Container(
                                                height: 80,
                                                child: Image.asset(
                                                    myBirtdays[index].avatar)),
                                            Text(
                                              myBirtdays[index].name,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              myBirtdays[index].age,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              height: 29,
                                              width: 107,
                                              child: Text(
                                                  myBirtdays[index].isFemale
                                                      ? 'Wish here'
                                                      : 'Wish him',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                              decoration: BoxDecoration(
                                                color:
                                                    myBirtdays[index].isFemale
                                                        ? redButtonColor
                                                        : blueButtonColor,
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                              alignment: Alignment.center,
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 19,
                                      )
                                    ],
                                  );
                                },
                                itemCount: myBirtdays.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "New Stories",
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 246,
                              child: ListView.builder(
                                itemBuilder: (context, int index) {
                                  return Row(
                                    children: <Widget>[
                                      Container(
                                        //width: 100,
                                        height: 200,
                                        child: Stack(
                                          children: <Widget>[
                                            Image.asset(
                                              myStories[index].image,
                                              scale: 1,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 10),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  child: Container(
                                                    height: 40,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Image.asset(
                                                          myStories[index]
                                                              .avatar,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              myStories[index]
                                                                  .name,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14),
                                                            ),
                                                            Text(
                                                              myStories[index]
                                                                  .post_time,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 19,
                                      )
                                    ],
                                  );
                                },
                                itemCount: myBirtdays.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox(),
          //UserPost()
        ],
      ),
    );
  }
}
