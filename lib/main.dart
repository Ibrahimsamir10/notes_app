import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/views/notes_view.dart';
import 'package:store_app/views/widgets/constant.dart';

void main() async {
  runApp(const NotesApp());
 await Hive.openBox(kNotes);
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
        brightness: Brightness.dark,
       fontFamily: 'Poppins'
       ),
       home:const NotesView(),
      ),
    );
  }
}
