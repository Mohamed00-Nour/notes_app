import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xff4f378b),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
            width: 20.0,
            height: 20.0,
                  child: CircularProgressIndicator(),
                )
              : const Text(
                  'Add Note',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
