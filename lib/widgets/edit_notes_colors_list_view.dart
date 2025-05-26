import 'package:flutter/widgets.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/colors_list_view.dart';
import 'package:notesapp/widgets/const.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

   late int currentIndex;
   @override
  void initState() {
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount:kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: 
          GestureDetector(
            onTap: () {
              currentIndex=index;
              widget.note.color=kColors[index].value;
              setState(() {
                
              });
             
            },
            child: ColorItem(color: kColors[index],isActive:currentIndex==index,)),
        );
      
      }),
    );;
  }
}