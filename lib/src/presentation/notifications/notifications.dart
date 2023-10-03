import 'package:classroom/src/config/constants/teacher_name.dart';
import 'package:classroom/src/config/text/paragraph.dart';
import 'package:classroom/src/presentation/notifications/components/notifications_label.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildNotificationsLabel(),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) => AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: const Paragraph(
          content: 'Notifications',
          color: Colors.black,
          fontSize: 23,
        ),
        actions: [
          const Paragraph(
            content: 'All',
            fontSize: 18,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_down),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(height: 1),
        ),
      );

  Widget buildNotificationsLabel() => Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                NotificationsLabel(teacherName: TeacherName.nguyenDung),
                const NotificationsLabel(),
                NotificationsLabel(teacherName: TeacherName.nguyenHoangHa),
                const NotificationsLabel(),
                const NotificationsLabel(),
                const NotificationsLabel(),
              ],
            ),
          ),
        ],
      );
}
