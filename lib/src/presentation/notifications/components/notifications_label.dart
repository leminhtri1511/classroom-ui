import 'package:classroom/src/config/constants/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/text/paragraph.dart';

class NotificationsLabel extends StatelessWidget {
  const NotificationsLabel({
    super.key,
    this.teacherName,
  });

  final String? teacherName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset(
            AppImage.profile,
            width: 50,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(
                  content: teacherName == null
                      ? 'New homework'
                      : 'New homework assigned by $teacherName',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                ),
                const Paragraph(
                  content: 'See details',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Paragraph(content: 'November 15'),
          ),
        ],
      ),
    );
  }
}
