// lib/features/profile_management/widgets/AvatarWidget.dart

import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imagePath;
  final double radius;

  const AvatarWidget({
    Key? key,
    required this.imagePath,
    this.radius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: Colors.grey[700],
    );
  }
}
