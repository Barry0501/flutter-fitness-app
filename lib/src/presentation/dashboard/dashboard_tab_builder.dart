import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/uidata.dart';

import '../../domain/entities/dashboard/dashboard_bottom_navigation_bar_item.dart';

class DashboardTabItemWidget {
  final DashboardBottomNavigationBarItem item;
  final Widget icon;
  final Widget child;

  const DashboardTabItemWidget({
    required this.item,
    required this.icon,
    required this.child,
  });
}

extension DashboardBottomNavigationBarKeyBuilderExt
    on DashboardBottomNavigationBarItem {
  Widget build(BuildContext context) {
    switch (this) {
      case DashboardBottomNavigationBarItem.home:
        return const SizedBox();
      case DashboardBottomNavigationBarItem.camera:
        return const SizedBox();
      case DashboardBottomNavigationBarItem.chat:
        return const SizedBox();
      case DashboardBottomNavigationBarItem.people:
        return const SizedBox();
    }
  }

  Widget icon() {
    switch (this) {
      // case DashboardBottomNavigationBarItem.home:
      //   return const ImageIcon(AssetImage(UIData.icHome));
      // case DashboardBottomNavigationBarItem.camera:
      //   return const ImageIcon(AssetImage(UIData.icCamera));
      // case DashboardBottomNavigationBarItem.chat:
      //   return const ImageIcon(AssetImage(UIData.icComment));
      // case DashboardBottomNavigationBarItem.people:
      //   return const ImageIcon(AssetImage(UIData.icUsers));
      default:
        return const ImageIcon(AssetImage(UIData.icUsers));
    }
  }
}
