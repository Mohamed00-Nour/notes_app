import 'package:flutter/material.dart';
import 'package:my_notes/Widgets/Custom_TextField.dart';

import 'Custom_App_Bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 45.0,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 20.0,
          ),
          CustomTextField(hintText: 'Content'  , maxLines: 5,),
        ],
      ),
    );
  }
}
