import 'package:flutter/material.dart';
import 'package:store_app/views/widgets/notes_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          SizedBox(

            height: 10,
          ),
     Expanded(child: NoteListView()),
             ],
      ),
    );
  }
}
