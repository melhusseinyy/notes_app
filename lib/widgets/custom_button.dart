
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        //  button take the width of container
        width: MediaQuery.of(context).size.width,    
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:kPrimaryColor
        ),
        child: Center(
          child: Text('Add',style: TextStyle(
            color: Colors.black,fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
        
      ),
    );
  }
}
