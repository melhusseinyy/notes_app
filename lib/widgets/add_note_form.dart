
import 'package:flutter/material.dart';
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
  String? title,subtiltle;
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
              subtiltle=value;
            },
            hint: 'Content',maxlines:5 ,),
           SizedBox(height: 32,),
           CustomButton(onTap: () {
             if(formKey.currentState!.validate()){
              formKey.currentState!.save();
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
