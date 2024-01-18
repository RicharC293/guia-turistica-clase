import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    this.alignment,
    required this.onPressed,
  });

  final IconData icon;
  final AlignmentGeometry? alignment;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(50, 50),
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        elevation: 1,
        alignment: alignment,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(icon, size: 30),
      ),
    );
  }
}
