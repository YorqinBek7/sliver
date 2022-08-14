// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sliver/presentation/info_screen/discuss_categories/discuss_categories.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: GestureDetector(
                  onTap: () => {
                        Navigator.pop(context),
                      },
                  child: Icon(Icons.arrow_back, color: Colors.black)),
              title: Text(
                "HTML",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              pinned: false,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  Text(
                    "Tags For Headers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "3 of 11 lessons",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              delegate: DiscussCategories(),
              pinned: true,
            ),
            SliverFixedExtentList(
                delegate: SliverChildListDelegate([
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  color: Color(0xffE6EDF4),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/images/image.png")),
                          Text(
                            "Intoduction",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            """You can launch a new career in web develop-
      ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, 
      a lot of determination, and a teacher you trust.
      Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.
      """,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ))
                ]),
                itemExtent: MediaQuery.of(context).size.height)
          ],
        ),
      ),
    );
  }
}
