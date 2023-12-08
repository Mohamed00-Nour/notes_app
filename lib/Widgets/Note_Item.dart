import 'package:flutter/material.dart';

import '../Views/Edit_Note_View.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNoteView()),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
          left: 16.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(fontSize: 26.0, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  "Note Subtitle Note Subtitle Note",
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.black.withOpacity(0.6)),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  size: 40,
                ),
                onPressed: () {},
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                "May21/2023",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
