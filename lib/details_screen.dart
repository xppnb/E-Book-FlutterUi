import 'package:e_book2/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'consttants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/bg.png"),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Crushing &",
                                  style: Theme.of(context).textTheme.display1,
                                ),
                                Text(
                                  "Influence",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Text(
                                          "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                                          maxLines: 5,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: kLightBlackColor,
                                          ),
                                        ),
                                      ],
                                    )),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite_border),
                                        ),
                                        BookRating(rating: 4.9)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                            Expanded(
                                child: Image.asset(
                              "images/book-1.png",
                              height: 200,
                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: [
                      ChapterCard(
                        size: size,
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                      ),
                      ChapterCard(
                        size: size,
                        name: "Power",
                        tag: "Everything loser power",
                        chapterNumber: 2,
                      ),
                      ChapterCard(
                        size: size,
                        name: "Influence",
                        tag: "Influence easily like never before",
                        chapterNumber: 3,
                      ),
                      ChapterCard(
                        size: size,
                        name: "Win",
                        tag: "Winner is what matters",
                        chapterNumber: 4,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "You might also ",
                        ),
                        TextSpan(
                          text: "like….",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding:
                                EdgeInsets.only(left: 24, top: 24, right: 150),
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFF8F9),
                                borderRadius: BorderRadius.circular(29)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: kBlackColor),
                                    children: [
                                      TextSpan(
                                        text:
                                            "How To Win \nFriends & Influence \n",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Gary Venchuk",
                                        style:
                                            TextStyle(color: kLightBlackColor),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: <Widget>[
                                    BookRating(
                                      rating: 4.9,
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            "images/book-3.png",
                            width: 150,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const ChapterCard({
    Key key,
    @required this.size,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFD3D3D3).withOpacity(.84),
                blurRadius: 33,
                offset: Offset(0, 10))
          ]),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Chapter $chapterNumber:$name\n",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            TextSpan(text: tag, style: TextStyle(color: kLightBlackColor))
          ])),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
