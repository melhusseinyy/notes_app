import 'package:flutter/material.dart';
import 'package:notesapp/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
        color: Colors.white,
        fontSize: 30
      ),),
      Spacer(flex: 1,),
      SearchIcon()

      
    
      ],
    );
  }
}
