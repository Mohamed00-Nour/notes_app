import 'package:flutter/material.dart';

import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 45.0,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32.0,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate ()){
                formKey.currentState!.save();
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {});

              }
            },
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}