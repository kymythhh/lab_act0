import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant.dart';
import 'custom_font.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName, postContent, date;
  final int numOfLikes;
  final bool hasImage;
  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setWidth(10)),
      child: Padding (
        padding: EdgeInsets.all(ScreenUtil().setWidth(10)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person),
                SizedBox(width: ScreenUtil().setWidth(10)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: userName,
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFont(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(Icons.public, size: ScreenUtil().setSp(12), color: Colors.grey),
                      ],
                    )
                  ]
                )
              ],
            ),
            Spacer(),
            Icon(Icons.more_horiz),
          ],
        ),

        SizedBox(height: ScreenUtil().setHeight(5)),

        CustomFont(
          text: postContent,
          fontSize: ScreenUtil().setSp(12),
          color: Colors.black,
        ),
        SizedBox(height: ScreenUtil().setHeight(5)),
        hasImage == true
            ? const Placeholder()
            : SizedBox(
              height: ScreenUtil().setHeight(1)
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              children: [
                TextButton.icon(
                  onPressed: () {
                    print('Liked');
                  },
                  
                ),
              ]
              }
              ),
      ),
    );
  }
}