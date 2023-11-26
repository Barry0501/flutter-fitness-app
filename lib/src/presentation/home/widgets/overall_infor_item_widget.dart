import 'package:flutter/material.dart';

import 'circle_progress_bar_widget.dart';

class OverallInforItemWidget extends StatelessWidget {
  const OverallInforItemWidget({
    super.key,
    required this.symbol,
    required this.title,
    required this.numberLoss,
    required this.percent,
    required this.increase,
    this.unit,
  });

  final Widget symbol;
  final String title;
  final double numberLoss;
  final double percent;
  final String increase;
  final String? unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              symbol,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(
                            '$numberLoss ${unit ?? ''}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              '+$increase%',
                              style: const TextStyle(
                                color: Color(0xFF12B3A8),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CircleProgressBarWidget(
          percent: percent,
          circleSize: 45,
          textFontSize: 12,
        ),
      ],
    );
  }
}
