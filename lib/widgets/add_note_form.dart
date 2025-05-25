
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(onSaved: (value) {
            title=value;
            
          },
          hint: 'Title',),
          SizedBox(height: 16,),
           CustomTextField(
            onSaved: (value) {
              subtitle=value;
            },
            hint: 'Content',maxlines:5 ,),
           SizedBox(height: 32,),
           CustomButton(onTap: () {
             if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              var noteModel=NoteModel(title: title!, subTitle: subtitle!, date:DateTime.now().toString(), color:Colors.blue.toARGB32());
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
             }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {
                
              });
             }
           },),
           SizedBox(height: 16,)
        ],
      ),
    );
  }
}
