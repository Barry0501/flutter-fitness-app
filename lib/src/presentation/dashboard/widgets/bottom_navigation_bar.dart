import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final List<BottomBarItem> items;
  final ValueChanged<int> onChanged;

  const BottomNavigationBarCustom({
    Key? key,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SafeArea(
          top: false,
          minimum: const EdgeInsets.only(bottom: 8),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: BottomContainerWidget(
              child: DefaultTabController(
                length: items.length,
                child: TabBar(
                  onTap: onChanged,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  indicatorWeight: 1,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: const Color(0xff697586),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  tabs: List.generate(items.length, (index) {
                    final item = items[index];
                    return item;
                  }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final bool isSelected;
  final int index;
  final Widget icon;

  const BottomBarItem({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: icon,
    );
  }
}

class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.11),
          ),
        ],
      ),
      child: child,
    );
  }
}
