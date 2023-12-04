import 'package:flutter/material.dart';
import 'Custom_App_Bar.dart';
import 'Notes_ListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0),
      child:  Column(
        children: [
          SizedBox(
            height: 45.0,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );

  }
}
