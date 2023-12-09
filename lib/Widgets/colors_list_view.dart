import 'package:flutter/material.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.red,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 67.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:
              (context, index) {
            return const ColorItem();
          }),
    );
  }
}
