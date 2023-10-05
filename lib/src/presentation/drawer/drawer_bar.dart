import 'package:classroom/src/config/constants/app_colors.dart';
import 'package:classroom/src/config/constants/class_details.dart';
import 'package:classroom/src/config/text/paragraph.dart';
import 'package:classroom/src/presentation/app_router.dart';
import 'package:classroom/src/presentation/drawer/components/registered_class.dart';
import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildDrawerHeader(),
            const Divider(
              color: Color.fromARGB(255, 156, 154, 154),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildClassPage(context),
                  const Divider(),
                  buildRegisteredClass(),
                  const Divider(),
                  buildConfigs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerHeader() => Padding(
        padding: const EdgeInsets.all(15.0),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 28),
            children: [
              TextSpan(
                text: 'G',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'o',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'o',
                style: TextStyle(
                    color: Colors.yellow, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'g',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'l',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'e',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' Class',
                style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),
              ),
            ],
          ),
        ),
      );

  Widget buildClassPage(BuildContext context) => Column(
        children: [
          const ListTile(
            leading: Icon(Icons.home_filled),
            title: Paragraph(content: 'Class'),
          ),
          ListTile(
            onTap: () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1975),
              lastDate: DateTime(2099),
            ),
            leading: const Icon(Icons.calendar_today),
            title: const Paragraph(content: 'Schedule'),
          ),
          ListTile(
            onTap: () => AppRouter.goToNotifications(context),
            leading: const Icon(Icons.notifications_none_rounded),
            title: const Paragraph(content: 'Notifications'),
          ),
        ],
      );

  Widget buildRegisteredClass() => Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Paragraph(content: 'Registered'),
            const SizedBox(height: 10),
            RegisteredClass(leadingColor: AppColors.grey),
            RegisteredClass(
              leadingColor: AppColors.blue,
              className: ClassDetails.flutter,
              classId: ClassDetails.flutterId,
            ),
            RegisteredClass(
              leadingColor: AppColors.green,
              className: ClassDetails.dataManage,
              classId: ClassDetails.dataManageId,
            ),
            RegisteredClass(
              leadingColor: AppColors.purple,
              className: ClassDetails.dataStructures,
              classId: ClassDetails.dataStructuresId,
            ),
            RegisteredClass(
              leadingColor: AppColors.orange,
              className: ClassDetails.designPatterns,
              classId: ClassDetails.designPatternsId,
            ),
            RegisteredClass(
              leadingColor: AppColors.pink,
              className: ClassDetails.reactNative,
              classId: ClassDetails.reactNativeId,
            ),
          ],
        ),
      );

  Widget buildConfigs() => const Column(
        children: [
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Paragraph(
              content: 'Settings',
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: Paragraph(
              content: 'Helps',
            ),
          ),
        ],
      );
}
