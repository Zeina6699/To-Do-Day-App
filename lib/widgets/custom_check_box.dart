import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key,required this.value,required this.onChanged});
  final bool? value;
  final void Function(bool?) onChanged;
  

 // bool? isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value:value,
      onChanged:onChanged);}}
      
      /*(newVal){
        setState(() {isChecked=newVal;
        });});}}*/