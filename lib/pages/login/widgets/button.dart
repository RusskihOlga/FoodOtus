import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback click;

  const Button({
    Key? key,
    required this.title,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF165932),
          fixedSize: const Size(232, 48),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      child: Text(title),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String title;
  final VoidCallback click;

  const ButtonText({
    Key? key,
    required this.title,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: click,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
