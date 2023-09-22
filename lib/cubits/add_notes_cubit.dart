import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_note_app/constants.dart';
import 'package:hive_note_app/models/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color color = const Color(0xffAC3931);
  addNote(NoteModle note) async {
    // note.color = color.value;
    emit(AddNotesLoding());
    try {
      var notesBox = Hive.box<NoteModle>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
