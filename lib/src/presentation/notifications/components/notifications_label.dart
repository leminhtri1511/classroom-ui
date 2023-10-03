import 'package:classroom/src/config/constants/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/text/paragraph.dart';

class NotificationsLabel extends StatefulWidget {
  const NotificationsLabel({super.key});

  @override
  State<NotificationsLabel> createState() => _NotificationsLabelState();
}

class _NotificationsLabelState extends State<NotificationsLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          // Container(
          //   // height: 60,
          //   // width: 60,
          //   // padding: const EdgeInsets.all(40),
          //   // color: AppColors.lightblue,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(99),
          //     color: AppColors.lightblue,
          //     image: DecorationImage(image: NetworkImage(ImageUrl.avatar))
          //   ),
          //   // child: Icon(
          //   //   CupertinoIcons.person_fill,
          //   //   size: 60,
          //   //   color: AppColors.blue,
          //   // ),
          // ),
          Image.asset(
            AppImage.profile,
            width: 70,
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(
                  content: 'New exercises',
                  maxLines: 1,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 20,
                ),
                Paragraph(
                  content: 'See details',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ],
            ),
          ),
          // const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Paragraph(content: 'November 15'),
          ),
        ],
      ),
    );
  }
}
