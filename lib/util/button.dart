import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color(0xffEEEEEE),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      height: 40,
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 17),
      ),
    );
  }
}
