import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
  try {
  var notesBox =  Hive.box<NoteModel>(kNotes);
  List<NoteModel> notes = notesBox.values.toList(); 
  emit(NotesSuccess(notes));
}  catch (e) {
  emit(NotesFailure(e.toString()));
}
  }
}
