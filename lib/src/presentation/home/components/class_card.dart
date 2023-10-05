import 'package:classroom/src/config/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../config/text/paragraph.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    super.key,
    this.color,
    this.className,
    this.teacherName,
  });

  final Color? color;
  final String? className;
  final String? teacherName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Paragraph(
                      content: className ?? '[ Class name ?? ]',
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    const Spacer(),
                    Paragraph(
                      content: teacherName ?? '[ Teacher name ?? ]',
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  PopupMenuButton(
                    color: AppColors.white,
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Paragraph(
                          content: 'Cancel registration',
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
