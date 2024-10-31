// lib/core/global_component/LineBarComponent.dart

import 'package:flutter/material.dart';

class LineBarComponent extends StatelessWidget {
  final int segments;
  final double height;
  final double spacing;

  const LineBarComponent({
    Key? key,
    this.segments = 3,
    this.height = 2,
    this.spacing = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> lineSegments = List.generate(segments, (index) {
      return Expanded(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      );
    });

    // Tambahkan spasi antar segmen
    List<Widget> spacedSegments = [];
    for (int i = 0; i < lineSegments.length; i++) {
      spacedSegments.add(lineSegments[i]);
      if (i < lineSegments.length - 1) {
        spacedSegments.add(SizedBox(width: spacing));
      }
    }

    return Row(
      children: spacedSegments,
    );
  }
}
