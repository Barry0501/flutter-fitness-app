import 'package:flutter/material.dart';

class HomeSectionWidget extends StatelessWidget {
  const HomeSectionWidget({
    super.key,
    required this.section,
    required this.actionText,
  });

  final String section;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          section,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Text(
              actionText,
              style: const TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 6),
              child: Icon(
                Icons.arrow_right_alt,
                color: Color(0xff6C7278),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
