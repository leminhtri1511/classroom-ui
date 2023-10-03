import 'package:classroom/src/config/constants/app_colors.dart';
import 'package:classroom/src/config/constants/class_name.dart';
import 'package:classroom/src/presentation/home/components/class_card.dart';
import 'package:classroom/src/presentation/home/components/work_details.dart';
import 'package:classroom/src/presentation/drawer/drawer_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const DrawerBar(),
      body: buildClassesLabel(),
      floatingActionButton: buildFloatingButton(),
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        surfaceTintColor: Colors.white,
        title: const Text('Google Class'),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.deepPurple,
            child: Text(
              'T',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(height: 1),
        ),
      );

  Widget buildClassesLabel() => Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: [
                  const WorkDetails(),
                  ClassCard(
                    color: AppColors.blue,
                    className: ClassName.flutter,
                    teacherName: 'Teacher 1',
                  ),
                  ClassCard(
                    color: AppColors.green,
                    className: ClassName.dataManage,
                    teacherName: 'Teacher 2',
                  ),
                  ClassCard(
                    color: AppColors.purple,
                    className: ClassName.dataStructures,
                    teacherName: 'Teacher 3',
                  ),
                  ClassCard(
                    color: AppColors.orange,
                    className: ClassName.designPatterns,
                    teacherName: 'Teacher 4',
                  ),
                  ClassCard(
                    color: AppColors.pink,
                    className: ClassName.reactNative,
                    teacherName: 'Teacher 5',
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget buildFloatingButton() => Padding(
        padding: const EdgeInsets.only(bottom: 10.0, right: 5),
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          tooltip: 'Increment',
          backgroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
      );
}
