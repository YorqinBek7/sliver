// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscussCategories extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Align(
      child: Container(
        padding: EdgeInsets.all(7),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF8F2EE)),
              child: Text(
                "Lessons",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF8F2EE)),
              child: Text(
                "Lessons",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF8F2EE)),
              child: Text(
                "Lessons",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
