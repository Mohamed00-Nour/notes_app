import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 47.0,
      height: 47.0,
      decoration:  BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Icon(
        Icons.search,
        size: 30.0,
      ),
    );
  }
}
