import 'package:flutter/material.dart';
import 'package:to_do_day_app/data.dart';
import 'package:to_do_day_app/screens/add_task_screen.dart';
import 'package:to_do_day_app/widgets/custom_list_view.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context)=>SingleChildScrollView(child: Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const AddTaskScreen())));
        },
        backgroundColor: Colors.indigo[400],
        child:const Icon(Icons.add)),
      backgroundColor: Colors.teal[400],
      body: Padding(
        padding: const EdgeInsets.only(
           top: 60,left: 20, right: 20,bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         const Row(children: [
              Icon(Icons.playlist_add_check,size: 40,color: Colors.white),
              SizedBox(width: 20,),
              Text('ToDoDay',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)
            ]),
         Text('${Provider.of<TaskData>(context).tasks.length} tasks',style: TextStyle(color: Colors.white,fontSize: 18)),
         const SizedBox(height:  20),
         Expanded(child:Container(
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
          child:const CustomListView(tasks:) ,
          
          ))
         ])
      ));}}
