import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,color: Colors.indigo[400],fontWeight: FontWeight.bold)),
          const TextField(textAlign: TextAlign.center,autofocus: true),
         const SizedBox(height: 30),
          ElevatedButton(
             style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
             foregroundColor: Colors.white,
              backgroundColor: Colors.teal[400]),
            onPressed: (){}, child:const Text('Add'))
        ]));
  }}