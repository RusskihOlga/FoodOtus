import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final String prefix;
  final bool hideText;
  final TextEditingController controller;

  const CustomInput({
    Key? key,
    required this.hint,
    required this.prefix,
    required this.controller,
    this.hideText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 232,
      child: TextField(
        controller: controller,
        obscureText: hideText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xFFC2C2C2),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          ),
          prefixIcon: Image.asset("assets/images/${prefix}_prefix.png"),
        ),
      ),
    );
  }
}
