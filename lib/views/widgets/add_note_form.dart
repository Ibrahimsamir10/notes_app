
import 'package:flutter/material.dart';
import 'package:store_app/views/widgets/custom_bottom.dart';
import 'package:store_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
final GlobalKey<FormState> formkey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'Title',
          ),
         const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
         const SizedBox(
            height: 32,
          ),
          CustomBottom(
            ontap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
         const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
