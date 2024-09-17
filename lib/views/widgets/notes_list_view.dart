
import 'package:flutter/material.dart';
import 'package:store_app/views/widgets/custom_note_icon.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}
