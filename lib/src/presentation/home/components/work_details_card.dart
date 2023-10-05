import 'package:classroom/src/config/constants/app_colors.dart';
import 'package:classroom/src/config/text/paragraph.dart';
import 'package:flutter/material.dart';

class WorkDetailsCard extends StatelessWidget {
  const WorkDetailsCard({
    super.key,
    this.className,
    this.teacherName,
  });

  final String? className;
  final String? teacherName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(107, 81, 80, 80)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Paragraph(content: 'This week', fontSize: 20),
                  Spacer(),
                  Paragraph(content: 'See work details', color: Colors.blue)
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: '0 ',
                          style: TextStyle(fontSize: 25),
                        ),
                        WidgetSpan(child: Paragraph(content: 'assigned')),
                        WidgetSpan(child: SizedBox(width: 13)),
                        TextSpan(
                          text: '0 ',
                          style: TextStyle(fontSize: 25),
                        ),
                        WidgetSpan(child: Paragraph(content: 'overdue')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
