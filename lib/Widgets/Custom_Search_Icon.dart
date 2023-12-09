import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, required this.onPressed});
final IconData icon;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 47.0,
      height: 47.0,
      decoration:  BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 30.0,
        ),
      )
    );
  }
}
