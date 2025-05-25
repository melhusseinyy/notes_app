import 'package:flutter/material.dart';
import 'package:notesapp/widgets/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines=1});
  final String hint;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor)
      ),
      
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color:color??  Colors.white
        )
      );
  }
}