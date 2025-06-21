import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:to_do_day_app/widgets/Custom_List_Tile.dart';

class CustomListView extends StatelessWidget {
  //final List<Task>tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return CustomListTile(data: tasks[index].name, value:tasks[index].isDone,onChanged:(bool? newVal){
      setState(() {tasks[index].change();});});},
    itemCount: tasks.length,
    );}}
    
  