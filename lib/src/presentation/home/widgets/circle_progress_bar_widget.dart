import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class CircleProgressBarWidget extends StatelessWidget {
  const CircleProgressBarWidget({
    super.key,
    required this.percent,
    required this.circleSize,
    this.textFontSize = 14,
  });

  final double percent;
  final double circleSize;
  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    final displayPercent = (percent * 100).toStringAsFixed(0);
    return SizedBox(
      width: circleSize,
      child: CircleProgressBar(
        foregroundColor: const Color(0xff44D1BB),
        backgroundColor: const Color(0xff6C7278),
        value: percent,
        child: Center(
          child: Text(
            '$displayPercent%',
            style: TextStyle(
              color: Colors.white,
              fontSize: textFontSize,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
