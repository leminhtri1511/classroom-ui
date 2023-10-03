import 'package:flutter/material.dart';

import '../../../config/text/paragraph.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    super.key,
    required this.color,
    this.className,
    this.teacherName,
  });

  final Color color;
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
          color: color,
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
                      content: className ?? '?',
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    const Spacer(),
                    Paragraph(
                      content: teacherName ?? '?',
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              // const Spacer(),
              const Column(
                children: [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
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
