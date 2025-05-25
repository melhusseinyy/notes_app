import 'package:flutter/material.dart';
import 'package:notesapp/Views/edid_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

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
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:const Text('Flutter Tips',style: TextStyle(color: Colors.black,
              fontSize: 26),),
              
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('build your career with tharwat samy ',style: TextStyle(color: Colors.black.withValues(alpha: .4),fontSize: 18),),
              ),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.black,),iconSize:35 ,),
              
      
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May22 , 2025',style: TextStyle(color: Colors.black.withValues(alpha: .4),fontSize:16)),
            )
          ],
        ),
        
       
      
      ),
    );
  }
}
