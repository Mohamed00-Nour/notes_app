import 'package:flutter/material.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ?
     CircleAvatar(
      radius: 38.0,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34.0,
        backgroundColor: color,
      ),
    )
        :  CircleAvatar(
      radius: 38.0,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder:
              (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index ? true : false,
                ),
              ),
            );
          }),
    );
  }
}
