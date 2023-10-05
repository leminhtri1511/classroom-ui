import 'package:classroom/src/config/constants/app_colors.dart';
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
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      child: Row(
        children: [
          Image.asset(
            AppImage.profile,
            width: 50,
          ),
          const SizedBox(width: 7),
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
                  fontSize: 15,
                ),
                const Paragraph(
                  content: 'See details',
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 15,
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Paragraph(
              content: 'November 15',
              color: AppColors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
