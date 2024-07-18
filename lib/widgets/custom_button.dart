import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    required this.onPressed,
  });

  final String? text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: Text(
          text ?? '',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
