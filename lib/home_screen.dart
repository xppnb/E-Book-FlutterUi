import 'package:e_book2/consttants.dart';
import 'package:e_book2/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/main_page_bg.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "What are you \nreading "),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ], style: Theme.of(context).textTheme.display1),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadListCard(
                          image: "images/book-1.png",
                          title: "Crushing & Influence\n",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailsScreen();
                            }));
                          },
                          pressRead: () {},
                        ),
                        ReadListCard(
                          image: "images/book-2.png",
                          title: "Top Ten Business\n",
                          auth: "Herman Joel",
                          rating: 4.8,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(text: "Best of the "),
                            TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ], style: Theme.of(context).textTheme.display1),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          height: 205,
                          child: Stack(
                            children: [
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 24,
                                        top: 24,
                                        right: size.width * 0.35),
                                    height: 185,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xFFEAEAEA).withOpacity(.45),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chinese Time Best For 11th March 2021",
                                          style: TextStyle(
                                              fontSize: 9,
                                              color: kLightBlackColor),
                                        ),
                                        Text(
                                          "How To Win \nFriends &  Influence",
                                          style:
                                              Theme.of(context).textTheme.title,
                                        ),
                                        Text(
                                          "Gary Venchuk",
                                          style: TextStyle(
                                              color: kLightBlackColor),
                                        ),
                                        Row(
                                          children: [
                                            BookRating(rating: 4.9),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                                child: Text(
                                              "When the earth was flat and everyone wanted to win the game of the best and people….",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: kLightBlackColor,
                                                  fontSize: 10),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Image.asset(
                                  "images/book-3.png",
                                  width: 150,
                                  // width: size.width * .37,
                                )
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: SizedBox(
                                    width: size.width * 0.3,
                                    height: 40,
                                    child: ReadButton(
                                      pressRead: () {},
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(text: "Continue "),
                            TextSpan(
                                text: "reading",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ], style: Theme.of(context).textTheme.display1),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 33,
                                    color: Color(0xFFD3D3D3).withOpacity(.84))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.only(left: 30, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Crushing & Influence",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Gary Venchuk",
                                              style: TextStyle(
                                                  color: kLightBlackColor),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                "Chapter 7 of 10",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "images/book-1.png",
                                        width: 55,
                                      )
                                    ],
                                  ),
                                )),
                                Container(
                                  height: 7,
                                  width: size.width * 0.65,
                                  decoration: BoxDecoration(
                                      color: kProgressIndicator,
                                      borderRadius: BorderRadius.circular(7)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 202,
      margin: EdgeInsets.only(left: 24, bottom: 40),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 11),
                        blurRadius: 33,
                        color: kShadowColor)
                  ]),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 25,
            right: 10,
            child: bookRating(rating: rating),
          ),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(children: [
                          TextSpan(
                              text: title,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: auth,
                              style: TextStyle(color: kLightBlackColor))
                        ], style: TextStyle(color: kBlackColor)),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            child: Text("Details"),
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        )),
                        Expanded(
                            child: ReadButton(
                          pressRead: () {},
                        )),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class bookRating extends StatelessWidget {
  const bookRating({
    Key key,
    @required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    offset: Offset(3, 7),
                    blurRadius: 30,
                    color: Color(0xFD3D3D3).withOpacity(.5))
              ]),
          child: BookRating(rating: rating),
        ),
      ],
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    Key key,
    @required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.star_border,
          color: kIconColor,
          size: 15,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          rating.toString(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ReadButton extends StatelessWidget {
  final Function pressRead;

  const ReadButton({Key key, this.pressRead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressRead,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text("Read", style: TextStyle(color: Colors.white)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(29),
                topLeft: Radius.circular(29))),
      ),
    );
  }
}
