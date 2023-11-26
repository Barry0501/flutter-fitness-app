import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/uidata.dart';

import 'detail_activity_item_widget.dart';
import 'home_section_widget.dart';
import 'rounded_container_widget.dart';

class TodayActivityDetailsWidget extends StatelessWidget {
  const TodayActivityDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeSectionWidget(
          section: 'Today’s Activity',
          actionText: 'See details',
        ),
        const SizedBox(height: 18),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(13),
                width: 78,
                decoration: ShapeDecoration(
                  color: const Color(0xFFC65468),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFAA3D5A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(UIData.lifting),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 14, bottom: 4),
                      child: Text(
                        '1.350',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Text(
                      'Calories',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: RoundedContainerWidget(
                  child: Column(
                    children: [
                      DetailActivityItemWidget(
                        color: Color(0xffEA7E41),
                        title: 'Push-ups',
                        description: 'Biceps, triceps, shoulders',
                        number: 15,
                        time: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: DetailActivityItemWidget(
                          color: Color(0xff12B3A8),
                          title: 'Squads',
                          description: 'calves, legs, thighs',
                          number: 25,
                          time: 3,
                        ),
                      ),
                      DetailActivityItemWidget(
                        color: Color(0xff78A5F0),
                        title: 'Lunges',
                        description: 'calves, hamstrings, glutes',
                        number: 15,
                        time: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
