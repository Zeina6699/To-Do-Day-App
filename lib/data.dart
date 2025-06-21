  import 'package:flutter/material.dart';
import 'package:to_do_day_app/Model/task.dart';
  class  TaskData extends ChangeNotifier {
    List<Task> tasks=[
    Task(name: 'Go shopping'),
    Task(name: 'buy a gift'),
    Task(name: 'Repair a car')
  ];
    
  }

