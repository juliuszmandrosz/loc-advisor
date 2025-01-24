import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:loc_advisor/shared/widgets/loc_advisor_gradient_background_page.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LocAdvisorGradientBackgroundPage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
