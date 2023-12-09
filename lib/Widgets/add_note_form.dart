import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../Cubits/add_note_cubit/add_note_cubit.dart';
import '../Models/Note_Model.dart';
import 'Custom_Button.dart';
import 'Custom_TextField.dart';
import 'colors_list_view.dart';

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
            height: 15.0,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 15.0,
          ),

          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDateTime = DateTime.now();
                    var formattedDate = DateFormat.yMMMd().format(currentDateTime);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedDate,
                      Color: Colors.blue.value,
                      //Colors.primaries[Random().nextInt(Colors.primaries.length)].value | 0xFF000000,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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

