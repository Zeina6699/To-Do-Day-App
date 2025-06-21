
import 'package:flutter/material.dart';
import 'package:to_do_day_app/widgets/custom_check_box.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({required this.data,required this.value,super.key,required  this.onChanged});
  final String data;
  final bool? value;
  final bool isChecked=false;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(data,style: TextStyle(decoration:isChecked? TextDecoration.lineThrough:null)) ,
      trailing: CustomCheckBox(value:isChecked,onChanged: onChanged));}}
    /*  (bool? newVal){
      / setState(() {isChecked=newVal!;*/
       
    
