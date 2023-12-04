import 'package:flutter/material.dart';

import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45.0,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32.0,
            ),
            CustomButton(),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
