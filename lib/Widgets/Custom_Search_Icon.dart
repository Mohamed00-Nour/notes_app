import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final IconData icon;
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
        icon,
        size: 30.0,
      ),
    );
  }
}
