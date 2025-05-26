import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note',icon: Icons.check,onPressed:(){
            widget.note.title=title ?? widget.note.title;
            widget.note.subTitle=content?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            
            Navigator.pop(context);

          } ,),
          SizedBox(height: 50,),
          CustomTextField(hint:widget.note.title,onChanged: (value) {
            title=value;
          },),
          SizedBox(height: 16,),
                    CustomTextField(hint: widget.note.subTitle,maxlines: 5,
                    onChanged: (value) {
                      content=value;
                    },),

          
      
        ],
        
      ),
    );
  }
}