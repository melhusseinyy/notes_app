import 'package:flutter/material.dart';
import 'package:notesapp/widgets/const.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 16,),
             CustomTextField(hint: 'Content',maxlines:5 ,),
             SizedBox(height: 32,),
             CustomButton(),
             SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
