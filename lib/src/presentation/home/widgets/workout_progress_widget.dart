import 'package:flutter/material.dart';

import 'circle_progress_bar_widget.dart';

class WorkoutProgressWidget extends StatelessWidget {
  const WorkoutProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 30,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFF2C3033),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 34,
            offset: Offset(0, 24),
            spreadRadius: -10,
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Workout Progress',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  '12 Exercise left',
                  style: TextStyle(
                    color: Color(0xFFACB5BB),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          CircleProgressBarWidget(
            circleSize: 51,
            percent: 0.65,
          ),
        ],
      ),
    );
  }
}
