import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            children: [
              SizedBox(height: 50,),
              CustomAppBar(title: 'Notes',icon:Icons.search),
              Expanded(child: NotesListView())
      
            ],
        
          ),
      ),
    );

   
  }
}

