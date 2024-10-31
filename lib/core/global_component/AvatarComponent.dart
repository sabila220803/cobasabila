// lib/core/global_component/AvatarComponent.dart

import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imagePath;
  final double radius;

  const AvatarComponent({
    Key? key,
    required this.imagePath,
    this.radius = 20,
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
