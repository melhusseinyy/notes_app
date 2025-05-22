import 'package:flutter/material.dart';
import 'package:notesapp/widgets/app_bar_body.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          children: [
            SizedBox(height: 50,),
            AppBarBody()
          ],
      
        ),
    );

   
  }
}
