import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/const.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes(){
    
  
  var notesBox=Hive.box<NoteModel>(kNotesBox);
 notes =  notesBox.values.toList();
 emit(NotesCubitSuccess());
  
  

  }
  }

