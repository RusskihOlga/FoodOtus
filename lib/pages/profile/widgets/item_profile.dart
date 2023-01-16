import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  final String? rightText;
  final String leftText;

  const ItemProfile({
    Key? key,
    this.rightText,
    required this.leftText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF959292).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                leftText,
                style: const TextStyle(
                  color: Color(0xFF165932),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            if (rightText != null)
              Text(
                rightText!,
                style: const TextStyle(
                  color: Color(0xFF2ECC71),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
