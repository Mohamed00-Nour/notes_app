import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
