import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/uidata.dart';

import 'home_section_widget.dart';
import 'overall_infor_item_widget.dart';
import 'rounded_container_widget.dart';
import 'rounded_symbol_icon_widget.dart';

class OverallStatusWidget extends StatelessWidget {
  const OverallStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, bottom: 14),
      child: Column(
        children: [
          HomeSectionWidget(
            section: 'Overall Status',
            actionText: 'See more',
          ),
          SizedBox(height: 18),
          RoundedContainerWidget(
            child: Column(
              children: [
                OverallInforItemWidget(
                  symbol: RoundedSymbolIconWidget(
                    image: UIData.fire,
                    color: Color(0xFFFCDBB3),
                  ),
                  title: 'Calories Loss',
                  numberLoss: 12.182,
                  percent: 0.37,
                  increase: '2,8',
                ),
                SizedBox(height: 22),
                OverallInforItemWidget(
                  symbol: RoundedSymbolIconWidget(
                    image: UIData.liftingEmoji,
                    color: Color(0xFFEDF1F3),
                  ),
                  title: 'Weight Loss',
                  numberLoss: 10.7,
                  percent: 0.8,
                  increase: '2,8',
                  unit: 'Kg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
