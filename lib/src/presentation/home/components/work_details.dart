import 'package:flutter/material.dart';


class WorkDetails extends StatelessWidget {
  const WorkDetails({
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
                  Text('This week', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Text('See work details',
                      style: TextStyle(fontSize: 17, color: Colors.blue)),
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
                        TextSpan(text: 'assigned'),
                        WidgetSpan(child: SizedBox(width: 13)),
                        TextSpan(
                          text: '0 ',
                          style: TextStyle(fontSize: 25),
                        ),
                        TextSpan(text: 'overdue'),
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
