import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/views/widgets/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
  try {
  var notesBox =  Hive.box<NoteModel>(kNotes);
  emit(AddNoteSuccess());
   await notesBox.add(note);
}  catch (e) {
  AddNoteFailure(e.toString());
}
  }
}
