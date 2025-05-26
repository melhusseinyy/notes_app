import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Views/edid_note_view.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
 final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return EdidNoteView();

        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title ,style: TextStyle(color: Colors.black,
              fontSize: 26),),
              
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subTitle,style: TextStyle(color: Colors.black.withValues(alpha: .4),fontSize: 18),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }, icon:Icon(Icons.delete,color: Colors.black,),iconSize:35 ,),
              
      
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(color: Colors.black.withValues(alpha: .4),fontSize:16)),
            )
          ],
        ),
        
       
      
      ),
    );
  }
}
