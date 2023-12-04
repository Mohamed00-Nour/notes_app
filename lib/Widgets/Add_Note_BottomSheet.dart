import 'package:flutter/material.dart';

import 'Custom_TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(
            height: 45.0,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
