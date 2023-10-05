import 'package:classroom/src/config/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../config/text/paragraph.dart';

class RegisteredClass extends StatelessWidget {
  const RegisteredClass({
    super.key,
    this.className,
    this.classId,
    required this.leadingColor,
  });

  final String? className;
  final String? classId;
  final Color leadingColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: leadingColor,
            child: Paragraph(
              content: className?.substring(0, 1).toUpperCase() ?? '?',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 234, 232, 232),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Paragraph(
                  content: className ?? '[ Class name ?? ]',
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                ),

                Paragraph(
                  content: classId ?? '[ Class id ?? ]',
                  color: AppColors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
