import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLines = 1, this.onSaved, this.onChanged});
final String hintText;
final int maxLines;
final void Function(String?)? onChanged;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged: onChanged,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Please enter $hintText';
        }
        return null;
      } ,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
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
