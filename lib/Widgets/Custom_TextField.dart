import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),

      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        borderSide: BorderSide(
          color: Colors.white,
        )
      );
  }
}
