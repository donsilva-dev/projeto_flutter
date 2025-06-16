import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  final String name;
  final Color color;
  final Color buttonColor;
  final VoidCallback? onTap;

  //final IconData? icon;
  const CustomKeyboard({
    required this.buttonColor,
    required this.color,
    required this.name,
    this.onTap,

    super.key,
  });

  @override
  State<CustomKeyboard> createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 113,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        onPressed: widget.onTap,
        child: Text(
          widget.name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
