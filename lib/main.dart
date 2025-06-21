import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_day_app/data.dart';
import 'package:to_do_day_app/screens/task_screen.dart';

void main() {
  runApp(const ToDoDayApp());
}

class ToDoDayApp extends StatelessWidget {
  const ToDoDayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        routes: {
          '/task':(index)=>const TaskScreen()
        },
       initialRoute: '/task'),
    );}}