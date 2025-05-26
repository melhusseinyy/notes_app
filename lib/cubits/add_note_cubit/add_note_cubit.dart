import 'dart:developer';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/const.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color=Color(0xffAC3931) ;

  addNote(NoteModel note)async{
    note.color=color!.value;
    emit(AddNoteLoading());
   try {
  var notesBox=Hive.box<NoteModel>(kNotesBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
  log("the notes is ${Hive.box<NoteModel>(kNotesBox).values.toList()}");
 
}  catch (e) {
   emit(AddNoteFailure(e.toString()));
}

  }
}
