import 'package:flutter/material.dart';

class RoundedSymbolIconWidget extends StatelessWidget {
  const RoundedSymbolIconWidget({
    super.key,
    required this.image,
    required this.color,
  });

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Image.asset(image),
    );
  }
}
