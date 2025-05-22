import 'package:flutter/material.dart';
import 'package:notesapp/Views/notes_view.dart';

void main() {
  runApp(NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home:const NotesView(),
    );
  }
}