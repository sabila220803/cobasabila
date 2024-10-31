// lib/core/utils/route_utils.dart

import 'package:flutter/material.dart';
import '../../features/onboarding/screen/WelcomeScreen.dart';
import '../../features/format_selection/screen/FormatSelectionScreen.dart';
import '../../features/experience/screen/ExperienceScreen.dart';
import '../../features/profile_management/screen/ProfileScreen.dart'; // Tambahkan jika diperlukan

class RouteUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case '/nextScreen':
        return MaterialPageRoute(builder: (_) => FormatSelectionScreen());
      case '/experience':
        return MaterialPageRoute(builder: (_) => ExperienceScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('404: Page not found'),
            ),
          ),
        );
    }
  }
}
