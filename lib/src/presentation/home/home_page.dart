import 'package:flutter/material.dart';
import 'package:flutter_demo/src/presentation/home/widgets/overall_status_widget.dart';

import 'widgets/header_widget.dart';
import 'widgets/today_activity_details_widget.dart';
import 'widgets/workout_progress_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Column(
            children: [
              HeaderWidget(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      WorkoutProgressWidget(),
                      TodayActivityDetailsWidget(),
                      OverallStatusWidget(),
                      OverallStatusWidget(),
                      OverallStatusWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
