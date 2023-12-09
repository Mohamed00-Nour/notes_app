import 'package:flutter/material.dart';

import 'Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressed, });
final String title;
final IconData icon;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
         CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
